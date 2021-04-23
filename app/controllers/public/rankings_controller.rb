class Public::RankingsController < ApplicationController

  def index
    # 三項演算子 → <条件式> ? true の時の処理 : false の時の処理
    # @golf_courses = params[:region_id].present? ? GolfCourse.where(region_id: params[:region_id]) : GolfCourse.all.page(params[:page]).per(8)

    if params[:region_id].present? #region_idで絞った時
      @golf_courses = GolfCourse.where(region_id: params[:region_id])
    elsif params[:prefecture_id].present? #県名で絞った時
      @golf_courses = GolfCourse.where(prefecture_id: params[:prefecture_id])
    else                                #それ以外の処理（ヘッダーからランキングページに遷移した時）
      @golf_courses = GolfCourse.all
    end

    @golf_courses = @golf_courses
                      .find(Post.where(golf_course_id: @golf_courses.ids)
                      .group(:rate)
                      .order('avg(rate) desc')
                      .pluck(:golf_course_id))

    @regions = Region.all
    @prefectures = Prefecture.all

  end

  def show
  end

end
