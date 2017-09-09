class PostsController < ApplicationController
  before_action :set_post, only: [:show, :update, :edit, :destroy]
  def index
    @posts = Post.all
  end

  def show
  end

  def new
    @post = Post.new
    render partial: "form"
  end

  def edit
    render partial: "form"
  end

  def create
    @post = Post.new(post_params)

    if @post.save
      redirect_to post_path(@post)
    else
      render partial: "form"
    end
  end


  def update
    if @post.update(post_params)
      redirect_to post_path(@post)
    else
      render partial: "form"
    end
  end

  def destroy
    @post.destroy
    redirect_to posts_path
  end

  private

    def set_post
      @post = Post.find(params[:id])
    end

    def post_params
      params.require(:post).permit(:name)
    end
end