class Post < ApplicationRecord
  belongs_to :user
  belongs_to :golf_course
  # belongs_to :ranking

  has_many :likes, dependent: :destroy
  has_many :comments, dependent: :destroy

  attachment :image

end
