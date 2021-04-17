class Region < ApplicationRecord
  has_many :golf_courses, dependent: :destroy
end
