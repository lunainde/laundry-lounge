class BookingsController < ApplicationController
before_action :find_machine, only: [:create]

  def index
    @bookings = Booking.where(user_id: current_user)
  end

  def show
    @booking = Booking.find(params[:id])
    @machine = Machine.where(id: Booking.find(params[:id]).machine_id)
  end

  def create
    @booking = Booking.new(booking_params)
    @machine = Machine.find(params[:machine_id])
    @booking.user = current_user
    @booking.machine = @machine
    if @booking.save
      redirect_to booking_path(@booking)
    else
      render :show
    end
  end

  def destroy
  end

private

  def booking_params
    params.require(:booking).permit(:date, :time, :user_id, :machine_id)
  end

  def find_machine
    @machine = Machine.find(params[:machine_id])
  end
end
