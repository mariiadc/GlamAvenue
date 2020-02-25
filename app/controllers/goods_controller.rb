class GoodsController < ApplicationController
# skip_before_action :authenticate_user!, only: [:show, :index]
  def index
    @goods = Good.all
  end

  def new
    @good = Good.new
  end

  def show
    @good = Good.find(params[:id])
    @booking = Booking.new # This is so that we can have the Booking form in the show page
  end

  def create
    @good = Good.new(good_params)
    @good.user_id = session["warden.user.user.key"][0][0] # Get user_id of who is posting the item.
    @good.save

    redirect_to goods_path

  end
 private

  def good_params
    params.require(:good).permit(:name, :description, :category, :price, :designer, :location)
  end
end
