class Post < ApplicationRecord
  belongs_to :user
  belongs_to :golf_course
  # belongs_to :ranking

  has_many :likes, dependent: :destroy
  has_many :comments, dependent: :destroy

  attachment :image

  validates :title, presence: true

  validates :rate, numericality: {
    less_than_or_equal_to: 5,
    greater_than_or_equal_to: 1}, presence: true


end
