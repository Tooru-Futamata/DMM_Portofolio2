class Public::PostsController < ApplicationController

  def new
    @post = Post.new
  end

  def index
    @posts = Post.all.page(params[:page]).per(6)

  end

  def show
  end

  def edit
    @post = Post.find(params[:id])
    @post.user_id = current_user.id
    @post.golf_course_id = params[:golf_course_id]


    # if @post.user == current_user
    #   render "edit"
    # else
    #   # redirect_to books_path
    # end
  end

  def update
    @post = Post.find(params[:id])
    if @post.update(post_params)
      redirect_to public_public_golfcourse_path(@post.golf_course_id), notice: 'You have updated user successfully'
    else
      render :edit
    end
  end

  def create
    @post = Post.new(post_params)
    @post.user_id = current_user.id
    @post.golf_course_id = params[:golf_course_id]
    if @post.save!
      redirect_to public_public_golfcourse_path(@post.golf_course_id)
    else
      flash.now[:warning] = "入力不備があります"
      render :new
    end
  end

  def destroy
    @post = Post.find(params[:id])
    if @post.destroy
      redirect_to public_public_golfcourse_path(@post.golf_course_id)
    end
  end

  private

  def post_params
    params.require(:post).permit(:title, :content, :golf_course_id, :rate)
  end

end

