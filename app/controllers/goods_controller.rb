class GoodsController < ApplicationController
  def index
    @goods = Good.all
  end

  def new
    @good = Good.new
  end

  def show
  end

  def create
    @good = Good.new(good_params)
    @good.save

    redirect_to goods_path

  end
 private

  def good_params
    params.require(:good).permit(:name, :description, :category, :price, :designer, :location)
  end
end
