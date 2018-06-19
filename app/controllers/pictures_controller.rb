class PicturesController < ApplicationController
  before_action :find_picture, only: [:update, :destroy]
  # before_destroy :destroy_comments

  def index
    @pictures = Picture.all
    render json: @pictures
  end

  def create
    @picture = Picture.new(picture_params)
    if @picture.save
      render json: { success: "You have succesfully updated your database" }, status: :ok
   else
     render json: { errors: @picture.errors.full_messages }, status: :unprocessible_entity
   end
  end

  def update
   @picture.update(picture_params)
   if @picture.save
     render json: @picture, status: :accepted
   else
     render json: { errors: @picture.errors.full_messages }, status: :unprocessible_entity
   end
 end

 def destroy
   if @picture.comments
     destroy_comments(@picture)
   end
   @picture.destroy
   render json: { success: "You have succesfully deleted the record from the database" }, status: :ok
 end


  private

  def destroy_comments(picture)
    picture.comments.destroy_all
  end

  def find_picture
    @picture = Picture.find(params[:id])
  end

  def picture_params
    params.require(:picture).permit(:description, :photographer, :like_count, :url, :id)
  end

  # {	"picture":
  # 	{
  # 		"like_count": "0"
  # 	}
  # }

end
