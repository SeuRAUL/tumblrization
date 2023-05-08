class PostsController < ApplicationController
  before_action :post, only: [:edit, :update, :show, :destroy]

  def index
  end

  def new
  end

  def create
    @post = Post.new(post_params)
    @post.save

    redirect_to @post
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
