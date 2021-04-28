class Public::UsersController < ApplicationController
  before_action :set_user, only: [:show, :destroy, :followings, :followers, :edit, :update]
  # before_action :require_user_logged_in, only: [:edit, :update, :destroy]
  # before_action :correct_user, only: [:edit, :update]
  # before_action :admin_user, only: :destroy

  def index
    @users = User.all
  end

  def show
    # @posts = @user.posts.all.page(params[:page]).per(6)
    @posts = Post.includes(:user, :golf_course).where(user_id: @user.id).order(created_at: :desc).page(params[:page]).per(6)
    # counts(@user)
    likes = Like.where(user_id: @user.id).pluck(:golf_course_id) # ログイン中のユーザーのお気に入りのgolfcourse_idカラムを取得
    @like_list = GolfCourse.find(likes) # gole_coursesテーブルから、お気に入り登録済みのレコードを取得


  end

  def edit
    if @user == current_user
      render "edit"
    else
      redirect_to public_user_path(@user.id)
    end
  end

  def update
    if @user.update(user_params)
      redirect_to public_user_path(@user.id), notice: 'You have updated user successfully'
    else
      render :edit
    end
  end

  def followings
    @users = @user.followings.all
  end

  def followers
    @users = @user.followers.all
  end

  private

  def user_params
    params.require(:user).permit(:name, :introduction, :profile_image, :email)
  end

  # def correct_user
  #   @user = User.find(params[:id])
  #   redirect_to(current_user) unless @user == current_user
  # end

  def set_user
    @user = User.find(params[:id])
  end
end
