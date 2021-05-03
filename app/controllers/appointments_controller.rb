class AppointmentsController < ApplicationController
    def show
        @appointment= Appointment.find_by_id(params[:id])
    end

    private

    def appointment_params
        
        appointment_params = params.require(:appointment).permit(:id, :appointment_datetime)
    end
end
