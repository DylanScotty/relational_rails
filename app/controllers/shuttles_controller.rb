class ShuttlesController < ApplicationController
    def index
        @shuttles = Shuttle.all
    end

    def show
    end
end