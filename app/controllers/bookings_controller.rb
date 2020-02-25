class BookingsController < ApplicationController
  before_action :find, only: [:show]

  def index
    @bookings = Booking.where(good_id: params[:good_id])
    authorize @booking
  end

  def show

  end

  def new
    @good = Good.new
    @good = Good.find(params[:good_id])
    @booking = Booking.new
    authorize @booking
  end

  def create
    @good = Good.find(params[:good_id])
    @booking = Booking.new(booking_params)
    @booking.user = current_user

    authorize @booking

    @booking.good_id = @good
    if @booking.save
      redirect_to root_path, notice: 'Your item was successfully booked.'
    else
      render :new
   end
  end

# this one is for listing all bookings of user? not based on reservations
  def list
    @bookings = Booking.where(user_id: user_session)
    authorize @booking
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :user_id, :good_id)
  end

  def find
    @booking = Booking.find(params[:id])
  end
end
