class GoodsController < ApplicationController
skip_before_action :authenticate_user!, only: [:show, :index, :root]
before_action :find, only: [:show, :edit, :update, :destroy]
  def index
    @goods = Good.all
    @goods = policy_scope(Good)  # .order(created_at: :desc)
  end

  def new
    @good = Good.new
    authorize @good
  end

  def show
    @good = Good.find(params[:id])
    @booking = Booking.new # This is so that we can have the Booking form in the show page
    authorize @good
  end

  def create
    @good = Good.new(good_params)
    @good.user = current_user

    authorize @good

    if @good.save
      redirect_to    @good, notice: 'Your item was successfully created.'
    else
      render :new
   end
  end

  def edit
  end

  def update
    @good.update(good_params)
    redirect_to good_path(@good)
  end

  def destroy
    @good.destroy
    redirect_to goods_path
  end
 private

  def good_params
    params.require(:good).permit(:name, :description, :category, :price, :designer, :location, :user_id, photos: [])
  end
end
