class PostsController < ApplicationController
  before_action :post, only: [:edit, :update, :show, :destroy]

  def index
    @posts = Post.all.order("created_at DESC")
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to @post
    else
      p @post.errors.any?
      render 'new', status: :unprocessable_entity
    end
  end

  def show
  end

  def update
  end

  def destroy
  end

  private

    def post
      @post = Post.find(params[:id])
    end

    def post_params
      params.require(:post).permit(:title, :body)
    end
end
