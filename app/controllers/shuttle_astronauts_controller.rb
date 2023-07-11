class ShuttleAstronautsController < ApplicationController
    def index
        @shuttle = Shuttle.find(params[:shuttle_id])
        @shuttle_astronauts = @shuttle.astronauts
    end

    def new
        @shuttle = Shuttle.find(params[:shuttle_id])
    end

    def create
        @shuttle = Shuttle.find(params[:shuttle_id])
        astronaut = @shuttle.astronauts.create(astronaut_params)
        redirect_to "/shuttles/#{@shuttle.id}/astronauts"
    end

    private

    def astronaut_params
        params.permit(:id, :name, :age, :space_veteran)
    end
end