class Public::PublicGolfcoursesController < ApplicationController
  def index
    @golf_courses = GolfCourse.all
  end

  def show
    @golf_course = GolfCourse.find(params[:id])
    @post = Post.new
    @posts = Post.all
  end

end
