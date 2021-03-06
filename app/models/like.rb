class Like < ApplicationRecord
  belongs_to :user, optional: true
  belongs_to :golf_course, optional: true

  validates_uniqueness_of :golf_course_id, scope: :user_id # バリデーション（ユーザーと記事の組み合わせは一意）
  # 同じ投稿を複数回お気に入り登録させないため。
end
