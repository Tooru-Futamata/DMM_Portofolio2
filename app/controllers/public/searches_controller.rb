class Public::SearchesController < ApplicationController

  def search
    @golf_course_or_user = params[:option]
    @how_search = params[:choice]
    @search = params[:search]

    if @golf_course_or_user == "1"
      @golf_courses = GolfCourse.search(params[:search], @golf_course_or_user, @how_search)
    else
      @users = User.search(params[:search], @golf_course_or_user, @how_search)
    end

  end

end
