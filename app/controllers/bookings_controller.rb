class BookingsController < ApplicationController
  before_action :find, only: [:show, :update]

  def index
    policy_scope(Booking).order(created_at: :desc)
    @bookings = Booking.where(user_id: current_user)

    authorize @bookings
  end

  def show
    @good = @booking.good
    authorize @good
    authorize @booking

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



    @booking.good_id = @good.id
    @booking.value = (@booking.end_date - @booking.start_date).to_i * @good.price.to_i

    if @booking.save
      redirect_to good_booking_path(@good, @booking), notice: 'Your item was successfully booked.'
    else
      render :new
   end
  end

# this one is for listing all bookings of user? not based on reservations
  def list
    @bookings = Booking.where(user_id: user_session)
    authorize @booking
  end


  def update
    find
    @booking.status = true
    @booking.save
    redirect_to booking_path(@booking)

  end

  def destroy
    @booking = Booking.where(user_id: current_user.id).first
    authorize @booking
    @booking.destroy
    redirect_to profile_path
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :value, :user_id, :good_id)
  end

  def find
    @booking = Booking.find(params[:id])
    authorize @booking
  end
end
