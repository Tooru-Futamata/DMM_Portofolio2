class Public::PostsController < ApplicationController

  def new
    @post = Post.new
  end

  def index
  end

  def show
  end

  def edit
  end

  def update
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to public_post_path(@post)
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
    params.require(:post).permit(:course_name,:image, :address, :content)
  end

end

