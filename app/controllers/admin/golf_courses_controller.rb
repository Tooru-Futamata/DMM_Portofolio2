class Admin::GolfCoursesController < ApplicationController
  before_action :authenticate_admin!, only: [:create, :edit, :update, :index, :show, :new]

  def new
    @golf_course = GolfCourse.new
  end

  def index
    # @golf_courses = params[:region_id].present? ? GolfCourse.where(region_id: params[:region_id]).page(params[:page]).per(8) : GolfCourse.all.page(params[:page]).per(8)
    if params[:region_id].present? # region_idで絞った時
      @golf_courses = GolfCourse.where(region_id: params[:region_id]).page(params[:page]).per(8)
    elsif params[:prefecture_id].present? # 県名で絞った時
      @golf_courses = GolfCourse.where(prefecture_id: params[:prefecture_id]).page(params[:page]).per(8)
    else # それ以外の処理（ヘッダーからランキングページに遷移した時）
      @golf_courses = GolfCourse.all.page(params[:page]).per(8)
    end

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
