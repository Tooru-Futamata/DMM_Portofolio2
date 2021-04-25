class Post < ApplicationRecord
  belongs_to :user
  belongs_to :golf_course

  attachment :image

  # validates :content, length: { maximum: 200 }

  validates :rate, numericality: {
    less_than_or_equal_to: 5,
    greater_than_or_equal_to: 1,
  }, presence: true
end
