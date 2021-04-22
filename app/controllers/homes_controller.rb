class HomesController < ApplicationController
  def top
    @regions = Region.all
    @golf_courses = GolfCourse.
              find(Post.
                    limit(4).
                    group(:rate).
                    order('avg(rate) desc').
                    pluck(:golf_course_id)
                  )
  end
end
