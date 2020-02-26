class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home]
  def home
    @good = Good.new
    @goods = Good.all
  end

  def index
    @goods = Good.all
  end

  def profile
    @bookings = Booking.where(user_id: current_user.id)
    @goods = Good.where(user_id: current_user.id)
  end
end
