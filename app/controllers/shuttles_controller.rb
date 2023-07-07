class ShuttlesController < ApplicationController
    def index
        @shuttles = Shuttle.all
    end

    def show
        @shuttle = Shuttle.find(params[:id])
    end
end