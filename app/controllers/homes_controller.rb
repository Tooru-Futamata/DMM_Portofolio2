class HomesController < ApplicationController
  def top
    @golf_courses = GolfCourse.
              find(Post.
                    limit(4).
                    group(:rate).
                    order('avg(rate) desc').
                    pluck(:golf_course_id)
                  )
    @regions = Region.all
  end
end
