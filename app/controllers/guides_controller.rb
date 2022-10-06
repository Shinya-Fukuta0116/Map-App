class GuidesController < ApplicationController
  def new
    @guide = Guide.new
  end


  def index

  end

  def create
    @guide = Guide.new(guide_params)
    if @guide.save
      redirect_to new_guide_detail_path(@guide)
    else
      render "new"
    end
  end

  private

    def guide_params
      params.require(:guide).permit(:customer_name, :sales_name, :complete)
    end
end
