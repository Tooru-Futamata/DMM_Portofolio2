class HomesController < ApplicationController
  def top
    @regions = Region.all
    @golf_courses = GolfCourse.
              find(Post.
                    limit(4).
                    group(:rate).
                    order(Arel.sql('avg(rate) desc')).
                    pluck(:golf_course_id)
                  )
    @prefectures = Prefecture.all
  end
end
