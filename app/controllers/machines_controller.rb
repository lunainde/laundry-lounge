class MachinesController < ApplicationController

  def index
    if params[:query].present?
      @machines = Machine.where(business_type: params[:query])
    else
      @machines = Machine.all
      @markers = @machines.geocoded.map do |machine|
      {
        lat: machine.latitude,
        lng: machine.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { machine: machine }),
        image_url: helpers.asset_url('map-solid.png')
      }
      end
    end
  end


  def show
    @machine = Machine.find(params[:id])
    @booking = Booking.new
    @bookings = @machine.bookings
  end

  def new
    @machine = Machine.new
  end

  def create
    @machine = Machine.new(machine_params)
    @machine.user = current_user
    if @machine.save
      redirect_to machine_path(@machine)
    else
      render :new
    end
  end

  def edit
    @machine = Machine.find(params[:id])
  end

  def update
    @machine = Machine.find(params[:id])
    @machine.update(machine_params)
    redirect_to machine_path(@machine)
  end

  def destroy
    @machine = Machine.find(params[:id])
    @machine.destroy
    redirect_to machines_path
  end

  private

  def machine_params
    params.require(:machine).permit(:location, :business_type, :business_name, :machine_type, :price, :availability, :user_id)
  end

end
