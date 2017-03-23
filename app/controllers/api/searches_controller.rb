class Api::SearchesController < ApplicationController
  def show
    @restaurants = Restaurant.search(params[:q])
    render :show
  end
end
