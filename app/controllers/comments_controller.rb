class CommentsController < ApplicationController
  before_action :post, only: [:create, :edit, :update, :destroy]

  def create
    @post.comments.create(comment_params)
    redirect_to @post
  end

  def destroy
    @post.comments.find(params[:id]).destroy
    redirect_to @post
  end

  private

    def post
      @post = Post.find(params[:post_id])
    end

    def comment_params
      params.require(:comment).permit(:name, :body)
    end
end
