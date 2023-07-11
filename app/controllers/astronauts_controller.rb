class AstronautsController < ApplicationController

    def index
        @astronauts = Astronaut.all
    end

    def show
        @astronaut = Astronaut.find(params[:id])
    end

    def edit
        @astronaut = Astronaut.find(params[:id])
    end

    def update
        astronaut = Astronaut.find(params[:id])
        astronaut.update(astronaut_params)
        redirect_to "/astronauts/#{astronaut.id}"
    end

    def sort
        @shuttle = Shuttle.find(params[:shuttle_id])
        @astronauts = @shuttle.astronauts.order(:name)
    end

    private

    def astronaut_params
        params.permit(:id, :name, :age, :space_veteran)
    end
end