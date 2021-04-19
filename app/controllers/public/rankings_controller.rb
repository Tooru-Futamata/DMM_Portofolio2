class Public::RankingsController < ApplicationController

  def index
    # 三項演算子 → <条件式> ? true の時の処理 : false の時の処理
    @golf_courses = params[:region_id].present? ? GolfCourse.where(region_id: params[:region_id]) : GolfCourse.all

    # if params[:region_id].present?
    #   @golf_courses = GolfCourse.where(region_id: params[:region_id])
    # else
    #   @golf_courses = GolfCourse.all
    @golf_courses = @golf_courses
                      .find(Post.where(golf_course_id: @golf_courses.ids)
                      .group(:rate)
                      .order('avg(rate) desc')
                      .pluck(:golf_course_id))

  end

  def show
  end

end
