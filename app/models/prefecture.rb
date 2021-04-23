class Prefecture < ApplicationRecord
  has_many :golf_courses, dependent: :destroy
end
