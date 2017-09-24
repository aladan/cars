class AppointmentsController < ApplicationController
  
  def index
    @appointments = Appointment.ordered
  end

  def show
    appointment
  end

  def new
    @appointment = Appointment.new
  end

  def edit
    appointment
  end

  def create
    @appointment = Appointment.new(appointment_params)
    if @appointment.save
      redirect_to @appointment, status: 200
    else
      render :new
    end
  end

  def update
    if appointment.update(appointment_params)
      redirect_to appointment
    else
      render :edit
    end
  end

  def destroy
    appointment.destroy
    redirect_to appointments_path
  end


  private

  def appointment_params
    params.require(:appointment).permit(:title, :car, :release_date, :products)
  end

  def appointment
    @appointment ||= Appointment.find(params[:id])
  end
end
