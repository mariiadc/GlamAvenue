class BookingsController < ApplicationController
  before_action :find, only: [:show]

  def index
    @bookings = Booking.where(good_id: params[:good_id])
  end

  def show

  end

  def new
    @good = Good.find(params[:good_id])
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)

    @booking.good_id = Good.find(params[:good_id])
    @booking.user_id = session["warden.user.user.key"][0][0]

    @booking.save

  end

# this one is for listing all bookings of user? not based on reservations
  def list
    user_session = session["warden.user.user.key"][0][0]
    @bookings = Booking.where(user_id: user_session)
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :user_id, :good_id)
  end

  def find
    @booking = Booking.find(params[:id])
  end
end
