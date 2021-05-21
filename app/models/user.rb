class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :posts, dependent: :destroy
  has_many :likes, dependent: :destroy
  has_many :relationships, dependent: :destroy
  has_many :followings, through: :relationships, source: :follow, dependent: :destroy
  has_many :reverse_of_relationships, class_name: 'Relationship', foreign_key: 'follow_id', dependent: :destroy
  has_many :followers, through: :reverse_of_relationships, source: :user, dependent: :destroy

  attachment :profile_image

  validates :name, presence: true, length: { in: 2..10 }
  validates :introduction, length: { maximum: 20 }
  validates :name_id, length: { in: 2..15 }, presence: true, uniqueness: true, format: { with: /\A[a-zA-Z0-9]+\z/ }

  def follow(other_user)
    unless self == other_user
      relationships.find_or_create_by(follow_id: other_user.id)
    end
  end

  def unfollow(other_user)
    relationship = relationships.find_by(follow_id: other_user.id)
    relationship.destroy if relationship
  end

  def following?(other_user)
    followings.include?(other_user)
  end

  def already_liked?(golf_course)
    likes.exists?(golf_course_id: golf_course.id)
  end

  def User.search(search, golf_course_or_user, how_search)
    if golf_course_or_user == "2"
      if how_search == "1"
        User.where(['name LIKE ?', "%#{search}%"])
      elsif how_search == "2"
        User.where(['name LIKE ?', "#{search}"])
      elsif how_search == "3"
        User.where(['name LIKE ?', "#{search}%"])
      elsif how_search == "4"
        User.where(['name LIKE ?', "%#{search}"])
      else
        User.all
      end
    end
  end
end
