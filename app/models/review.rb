class Review < ActiveRecord::Base

  belongs_to :restaurant

  validates :restaurant_id, presence: true
  validates :rating, numericality: { only_integer: true },
    inclusion: { in: 1..5, message: "must be between 1 - 5"}, presence: true
  validates :body, presence: true
end
