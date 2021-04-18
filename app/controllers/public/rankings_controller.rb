class Public::RankingsController < ApplicationController

  def index
    if params[:region_id].present?
      @golf_courses = GolfCourse.where(region_id: params[:region_id])
    else
      @golf_courses = GolfCourse.all
                # # find(Post.
                #       group(:rate).
                #       order('avg(rate) desc').
                #       pluck(:golf_course_id)
                #     )
    end
  end

  def show
  end

end
