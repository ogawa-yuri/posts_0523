class PostsController < ApplicationController
  def new
    ＠post = Post.new
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to posts_path
    else
      render :new
    end
  end

  def edit
  end

  def index
  end

  def destroy
  end

  private
  def post_params
    params.permit(:content)
  end
end
