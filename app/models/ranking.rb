class Ranking < ApplicationRecord
  has_many :golf_courses, dependent: :destroy
  has_many :posts, dependent: :destroy
end
