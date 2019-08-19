class ClientsController < ApplicationController

    before_action :find_client, only: [:show, :edit, :update, :destroy]

    def index
        @clients = Client.all
    end

    def show
        @appoint = Appoint.new
    end

    def new
        @client = Client.new
    end

    def create
        @client = Client.create(client_params)
        redirect_to @client
    end

    def edit
        redirect_to @client
    end

    def update
        
    end

    def destroy
        
    end

    private

    def client_params
        params.require(:client).permit(:name,:specialty,:hours)
        
    end


    def find_client
        @client = Client.find(params[:id])
    end
end
