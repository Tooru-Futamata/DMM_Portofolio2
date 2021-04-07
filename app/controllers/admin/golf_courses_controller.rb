class Admin::GolfCoursesController < ApplicationController
  before_action :authenticate_admin!,only: [:create,:edit,:update,:index, :show, :new]

  def new
    @golf_course = GolfCourse.new
  end

  def index
  end

  def show
    @golf_course = GolfCourse.find(params[:id])
  end

  def edit
  end

  def update
  end

  def create
    golf_course = GolfCourse.new(golf_course_params)
    if golf_course.save
      redirect_to admin_golf_course_path(@golf_course)
    else
      flash.now[:warning] = "入力不備があります"
      render :new
    end
  end

  def destroy
  end

  private

  def golf_course_params
    params.require(:golf_course).permit(:name,:image, :address)
  end

end
