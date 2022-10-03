class GuidesController < ApplicationController
  def new
    @customer = Guide.new
  end


  def index

  end

  def create
    @customer = Guide.new(guides_params)
    @customer.save
    redirect_to new_guide_detail_path(@customer)

  private

  def guides_params
    params.require(:guide).permit(:customer_name, :sales_name, :complete)
  end

  end
end
