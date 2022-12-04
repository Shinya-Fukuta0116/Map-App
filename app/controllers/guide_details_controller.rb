class GuideDetailsController < ApplicationController
  def edit
    @guide= Guide.find(params[:id])

  end

  def guide_map
    @guide = Guide.find(params[:id])
    render json:@guide
  end
  def create

  end

  def index

  end

private

  def guide_details_params
    params.require(:guide_detail).permit(:guide_id, :address, :display_order)
  end
end
