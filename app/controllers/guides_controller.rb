class GuidesController < ApplicationController
  def new
    @guide = Guide.new
  end


  def index

  end

  def create
    @guide = Guide.new(guides_params)
    @guide = Guide.save
    redirect_to new_guide_detail_path(@guide)
  end

  private

    def guides_params
      params.require(:guide).permit(:customer_name, :sales_name, :complete)
    end
end
