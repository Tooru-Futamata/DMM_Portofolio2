class GolfCourse < ApplicationRecord
  has_many :posts, dependent: :destroy
  has_many :likes, dependent: :destroy
  belongs_to :region, optional: true
  belongs_to :prefecture, optional: true

  attachment :image

  validates :name, presence: true
  validates :region_id, presence: true
  validates :prefecture_id, presence: true
  validates :address, presence: true
  validates :image, presence: true

  def GolfCourse.search(search, golf_course_or_user, how_search)
    if golf_course_or_user == "1"
      if how_search == "1"
        GolfCourse.where(['name LIKE ?', "%#{search}%"])
      elsif how_search == "2"
        GolfCourse.where(['name LIKE ?', "#{search}"])
      elsif how_search == "3"
        GolfCourse.where(['name LIKE ?', "#{search}%"])
      elsif how_search == "4"
        GolfCourse.where(['name LIKE ?', "%#{search}"])
      else
        GolfCourse.all
      end
    end
  end

  geocoded_by :address
  after_validation :geocode, if: :address_changed?

  def avg_score
    if posts.empty?
      0.0
    else
      posts.average(:rate).round(1)
    end
  end

  def avg_score_percentage
    if posts.empty?
      0.0
    else
      posts.average(:rate).round(1).to_f * 100 / 5
    end
  end

  # attr_accessor :average


  # def average_rate
  #   self.posts.sum(:rate) / self.posts.length
  # end
end
