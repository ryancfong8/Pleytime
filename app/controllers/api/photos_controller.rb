class Api::PhotosController < ApplicationController
  def create
    @photo = Photo.new(photo_params)
    @restaurant = @photo.restaurant
    if @photo.save
      render 'api/photos/index'
    else
      render json: @photo.errors.full_messages, status: 422
    end
  end

  def destroy
    @photo = Photo.find(params[:id])
    @photo.destroy
    render 'api/photos/index'
  end

  private

  def photo_params
    params.require(:photo).permit(:restaurant_id, :user_id, :url)
  end
end
