class Public::PublicGolfcoursesController < ApplicationController
  def index
    @golf_courses = GolfCourse.all.page(params[:page]).per(8)
  end

  def show
    @golf_course = GolfCourse.find(params[:id])
    @post = Post.new
    @posts = Post.all
    @like = Like.new
  end

end
