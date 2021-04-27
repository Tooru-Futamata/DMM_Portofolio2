class Admin::GolfCoursesController < ApplicationController
  before_action :authenticate_admin!, only: [:create, :edit, :update, :index, :show, :new]

  def new
    @golf_course = GolfCourse.new
  end

  def index
    @golf_courses = params[:region_id].present? ? GolfCourse.where(region_id: params[:region_id]) : GolfCourse.all.page(params[:page]).per(8)
    @regions = Region.all
    @prefectures = Prefecture.all
  end

  def show
    @golf_course = GolfCourse.find(params[:id])
  end

  def edit
    @golf_course = GolfCourse.find(params[:id])
  end

  def update
    @golf_course = GolfCourse.find(params[:id])
    if @golf_course.update(golf_course_params)
      redirect_to admin_golf_course_path, notice: 'You have updated user successfully'
    else
      flash.now[:warning] = "入力不備があります"
      render :edit
    end
  end

  def create
    @golf_course = GolfCourse.new(golf_course_params)
    if @golf_course.save!
      redirect_to admin_golf_course_path(@golf_course)
    else
      flash.now[:warning] = "入力不備があります"
      render :new
    end
  end

  def destroy
    @golf_course = GolfCourse.find(params[:id])
    if @golf_course.destroy
      redirect_to admin_golf_courses_path
    end
  end

  private

  def golf_course_params
    params.require(:golf_course).permit(:name, :image, :region_id, :prefecture_id, :address, :latitude, :longitude)
  end
end
