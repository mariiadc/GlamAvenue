class GoodsController < ApplicationController
skip_before_action :authenticate_user!, only: [:show, :index, :root]
before_action :find, only: [:show, :edit, :update, :destroy]
  def index

    if params[:designer].present? && params[:category].present?
      @goods = policy_scope(Good).where(designer: params[:designer], category: params[:category])
    else
      @goods = policy_scope(Good)
    end


    @good = Good.new


    @goods = @goods.geocoded #returns flats with coordinates

    @markers = @goods.map do |good|
      {
        lat: good.latitude,
        lng: good.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { good: good })
      }
     # .order(created_at: :desc)
   end
  end

  def new
    @good = Good.new
    authorize @good
  end

  def show
    # @good = Good.find(params[:id])
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
    authorize @good
  end

  def update
    @good.update(good_params)
    authorize @good
    redirect_to good_path(@good)
  end

  def destroy
    authorize @good
    @good.destroy
    redirect_to goods_path
  end
 private

  def find
    @good = Good.find(params[:id])
  end
  def good_params
    params.require(:good).permit(:name, :description, :category, :price, :designer, :address, :user_id, photos: [])
  end
end
