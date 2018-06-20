class CommentsController < ApplicationController
  before_action :find_comment, only: [:destroy]

  def create
    @comment = Comment.new(comment_params)
    if @comment.save
      render json: { success: "You have succesfully updated your database" }, status: :ok
   else
     render json: { errors: @comment.errors.full_messages }, status: :unprocessible_entity
   end
  end

  def destroy
    @comment.destroy
    render json: { success: "You have succesfully deleted the record from the database" }, status: :ok
  end

  private

  def find_comment
    @comment = Comment.find(params[:id])
  end

  def comment_params
    params.require(:comment).permit(:content, :id, :picture_id)
  end
end
