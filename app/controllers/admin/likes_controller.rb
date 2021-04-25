class Admin::LikesController < ApplicationController
  # before_action :set_golf_course
  before_action :authenticate_user! # ログイン中のユーザーのみに許可（未ログインなら、ログイン画面へ移動）

  # お気に入り登録
  #   def create
  #     if @golf_course.user_id != current_user.id   # 投稿者本人以外に限定
  #       @like = Like.create(user_id: current_user.id, golf_course_id: @golf_course.id)
  #     end
  #   end
  #   # お気に入り削除
  #   def destroy
  #     @like = Like.find_by(user_id: current_user.id, golf_course_id: @golf_course.id)
  #     @like.destroy
  #   end

  #   private
  #   def set_golf_course
  #     @golf_course = GolfCourse.find(params[:golf_course_id])
  #   end
  # end

  # before_action :set_book

  def create
    @golf_course = GolfCourse.find(params[:golf_course_id])
    like = current_user.likes.new(golf_course_id: @golf_course.id)
    like.save
  end

  def destroy
    @golf_course = GolfCourse.find(params[:golf_course_id])
    like = current_user.likes.find_by(golf_course_id: @golf_course.id)
    like.destroy
  end

  private

  def set_book
    @golf_course = GolfCourse.find(params[:golf_course_id])
  end
end
