class Public::PublicGolfcoursesController < ApplicationController
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
    @post = Post.new
    @posts = Post.all
    @like = Like.new
  end
end
