class MachinesController < ApplicationController

  def index
    @machines = Machine.all
  end

  def show
    @machine = Machine.find(params[:id])
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
