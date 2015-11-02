class Api::V1::CommentsController < ApplicationController
  def index
    @data = Comment.all
  end

  def create
    @comment = Comment.create(comment_prams)
    render :show, status: :created
  end

  private

  def comment_prams
    params.permit(:author, :text)
  end
end
