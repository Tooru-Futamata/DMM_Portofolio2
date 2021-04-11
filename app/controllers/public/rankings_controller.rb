class Public::RankingsController < ApplicationController

  def index
    @golf_courses = GolfCourse.
              find(Post.
                    group(:rate).
                    order('avg(rate) desc').
                    pluck(:golf_course_id)
                  )
  end

  def show
  end

end
