class PostsController < ApplicationController
  before_action :set_post, only: %i[show edit update destroy]
  before_action :set_author, only: %i[new create]
  def index
    @posts = Post.all
  end

  def show; end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    @post.author = @author
    @post.save
    redirect_to post_path(@post)
  end

  def edit; end

  def update
    @post.update(post_params)
    redirect_to post_path(@post)
  end

  def destroy
    author = @post.author
    @post.destroy
    redirect_to author_path(author)
  end

  private

  def set_post
    @post = Post.find(params[:id])
  end

  def set_author
    @author = Author.find(params[:author_id])
  end

  def post_params
    params.require(:post).permit(
      :title,
      :text,
      :image
    )
  end
end
