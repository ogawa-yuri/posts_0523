class PostsController < ApplicationController
  def new
    @post = Post.new
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
    @post = Post.find_by(id: params[:id])
  end

  def index
    @posts = Post.all.order(updated_at: :desc)
  end

  def update
    @post = Post.find(params[:id])
    if @post.update(post_params)
      redirect_to posts_path, notice: "投稿を編集しました！"
    else
      render :edit
    end
  end

  def destroy
  end

  private
  def post_params
    params.require(:post).permit(:content)
  end
end
