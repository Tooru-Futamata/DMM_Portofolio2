class GolfCourse < ApplicationRecord
  has_many :posts, dependent: :destroy
  belongs_to :ranking
  attachment :image
end
