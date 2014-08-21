class BookingsController < ApplicationController
before_filter :authenticate_user!

  def create
    @booking = Booking.new(bookings_params)
    if Booking.available(@booking)
      @booking.save
      redirect_to apartment_path(@booking.apartment), notice: "Booked! An email confirmation has been sent to you and the owner."
    else
      redirect_to :back, notice: "This apartment is not avaiable for those dates!"
    end
  end

private

  def bookings_params
    params.require(:booking).permit(:start_date, :end_date, :apartment_id, :user_id)
  end

end
