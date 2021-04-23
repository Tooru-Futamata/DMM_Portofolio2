class Public::PublicGolfcoursesController < ApplicationController
  def index
    @golf_courses = params[:region_id].present? ? GolfCourse.where(region_id: params[:region_id]) : GolfCourse.all.page(params[:page]).per(8)
    @regions = Region.all
    @prefectures = Prefecture.all
  end

  def show
    @golf_course = GolfCourse.find(params[:id])
    @post = Post.new
    @posts = Post.all
    @like = Like.new
  end

end
