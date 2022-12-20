class BookingsController < ApplicationController

  def new
    @rent = Rent.find(params[:rent_id])
    @booking = Booking.new
  end

  def create
    @rent = Rent.find(params[:rent_id])
    @booking = Booking.new(booking_params)
    @booking.rent = @rent
    @booking.user = current_user
    if @booking.save
      redirect_to rent_path(@rent)
    else
      render :new
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
