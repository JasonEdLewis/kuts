class AppointsController < ApplicationController

    before_action :find_appoint, only: [:show, :edit, :update, :destroy]

    def index
        @appoints = Appoint.all
        @barber = Barber.new
        @client = Client.new
        # @searched_barber = params[:search]
        # redirect_to barber_path(@searched_barber.ids[0])
    end

    def show
        
    end

    def new
        @appoint = Appoint.new
       
    end

    def create
        id = params[:appoint][:barber_id]
        barber_hours = Barber.find(id).hours -= 1
        if  barber_hours <= 0
            # :alert => "#{@barber.name} is all booked"
        else
        @appoint = Appoint.create(appoint_params)
        end
        redirect_to client_path(params[:appoint][:client_id])
    end

    def edit
   
    end

    def update
        @appoint.update(appoint_params)
        redirect_to client_path(@appoint.client_id)
    end

    def destroy
       
        @appoint.destroy
        redirect_to appoints_path
    end


    private
    
    def appoint_params
        params.require(:appoint).permit(:client_id,:barber_id,:time,:style)
        
    end


    def find_appoint
        @appoint =Appoint.find(params[:id])
    end
end
