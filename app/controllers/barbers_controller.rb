class BarbersController < ApplicationController

    before_action :find_barber, only: [:show, :edit, :update, :destroy]

    def index
        @barbers = Barber.all
    end

    def show
        
    end

    def new
        @barber = Barber.new
    end

    def create
        @barber = Barber.create(barber_params)
        redirect_to @barber
    end

    def edit
   
    end

    def update
        
    end

    def destroy
        
    end


    def barber_params
        params.require(:barber).permit(:name,:specialty,:hours)
        
    end

    def find_barber
        @barber = Barber.find(params[:id])
    end




end
