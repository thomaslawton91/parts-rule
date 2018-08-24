class SkusController < ApplicationController
  def index
    @search = Sku.ransack(params[:q])
    @skus = @search.result(distinct: true)
    @search.build_condition
  end

  def show
    @sku = Sku.find(params[:id])
  end
end
