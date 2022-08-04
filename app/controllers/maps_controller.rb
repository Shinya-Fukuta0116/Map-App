class MapsController < ApplicationController
  def new
    @maps = Map.all
  end
  def create
    @map = Map.new(map_params)
    @map.save
    redirect_to root_path
  end

  def index
    @map = Map.all(params[:id])

  end

private

  def map_params
      params.permit(:address,:latitude, :longitude)
  end
end
