class Public::UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    @posts = @user.posts.all.page(params[:page]).per(6)
    likes = Like.where(user_id: @user.id).pluck(:golf_course_id) # ログイン中のユーザーのお気に入りのgolfcourse_idカラムを取得
    @like_list = GolfCourse.find(likes) # gole_coursesテーブルから、お気に入り登録済みのレコードを取得
  end

  def edit
    @user = User.find(params[:id])
    if @user == current_user
      render "edit"
    else
      redirect_to public_user_path(current_user.id)
    end
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      redirect_to public_user_path(@user.id), notice: 'You have updated user successfully'
    else
      render :edit
    end
  end

  def followings
    @user = User.find(params[:id])
    @users = @user.followings.all
  end

  def followers
    @user = User.find(params[:id])
    @users = @user.followers.all
  end

  private

  def user_params
    params.require(:user).permit(:name, :introduction, :profile_image, :email)
  end
end
