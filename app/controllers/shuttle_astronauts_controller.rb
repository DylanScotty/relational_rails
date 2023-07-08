class ShuttleAstronautsController < ApplicationController
    def index
        @shuttle = Shuttle.find(params[:shuttle_id])
        @shuttle_astronauts = @shuttle.astronauts
    end
end