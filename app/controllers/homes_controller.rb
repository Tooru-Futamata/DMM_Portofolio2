class HomesController < ApplicationController
  def top
    # 地方名から絞る
    @regions = Region.all
    # 　県名から絞る
    @prefectures = Prefecture.all
    # ランキング機能
    @golf_courses = GolfCourse.
      find(Post.
                    limit(4).
                    group(:rate).
                    order(Arel.sql('avg(rate) desc')).
                    pluck(:golf_course_id))
    @prefectures = Prefecture.all
  end

  def guest_sign_in
    user = User.find_or_create_by!(email: 'guest@example.com') do |user|
      user.password = SecureRandom.urlsafe_base64
      # user.confirmed_at = Time.now  # Confirmable を使用している場合は必要
      user.name = 'ゲスト'
      user.name_id = 'guest'
    end
    sign_in user
    redirect_to public_user_path(user), notice: 'ゲストユーザーとしてログインしました。'
  end
end
