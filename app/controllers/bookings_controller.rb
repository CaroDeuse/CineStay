class BookingsController < ApplicationController
  def create
    @villa = Villa.find(params[:villa_id])
    @booking = Booking.new(booking_params)
    @booking.villa = @villa
    @booking.user = current_user
    if @booking.save
      redirect_to my_bookings_bookings_path
    else
      render "villas/show", status: :unprocessable_entity
    end
  end

  def my_bookings
    @bookings = Booking.where(user: current_user)
    @past_bookings = @bookings.select { |booking| booking.start_date <= Date.today }
    @next_bookings = @bookings.select { |booking| booking.start_date > Date.today }
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to my_bookings_bookings_path, status: :see_other
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
