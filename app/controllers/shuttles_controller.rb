class ShuttlesController < ApplicationController
    def index
        @shuttles = Shuttle.all.order("created_at DESC")
    end

    def show
        @shuttle = Shuttle.find(params[:id])
    end

    def new
        @shuttle = Shuttle.new
    end

    def create
        @shuttle = Shuttle.create(shuttle_params)
        redirect_to '/shuttles'
    end

    def edit
        @shuttle = Shuttle.find(params[:id])
    end

    def update
        @shuttle = Shuttle.find(params[:id])
        @shuttle.update(shuttle_params)
        redirect_to "/shuttles/#{@shuttle.id}"
    end

    private
    
    def shuttle_params
      params.permit(:name, :in_service, :year_built)
    end
end