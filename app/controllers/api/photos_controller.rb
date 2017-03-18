class Api::PhotosController < ApplicationController
  def create
    @photo = Photo.new(photo_params)
    if @photo.save
      render 'api/restaurants/show'
    else
      render json: @photo.errors.full_messages, status: 422
    end
  end

  def destroy
    @photo = Photo.find(params[:id])
    @photo.destroy
    render 'api/restaurants/show'
  end

  private

  def photo_params
    params.require(:photo).permit(:restaurant_id, :user_id, :url)
  end
end
