class Public::PostsController < ApplicationController

  def new
    @post = Post.new
  end

  def index
    @posts = Post.all

  end

  def show
  end

  def edit
  end

  def update
  end

  def create
    @post = Post.new(post_params)
    @post.user_id = current_user.id
    @post.golf_course_id = params[:golf_course_id]
    if @post.save!
      redirect_to public_public_golfcourse_path(@post)
    else
      flash.now[:warning] = "入力不備があります"
      render :new
    end
  end

  def destroy
  end

  def search
  end

  def map
  end

  private

  def post_params
    params.require(:post).permit(:title, :content, :golf_course_id)
  end

end

