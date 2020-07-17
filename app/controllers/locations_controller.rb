class LocationsController < ApplicationController 
    before_action :set_location, only: [:show, :update]

    def index
        @locations = Location.all 
        render json: @locations.as_json(include: {karens: {only: [:id, :title, :incident, :damn_karen, :location_id]}})
    end

    def show
        render json: @location.as_json(include: {karens: {only: [:id, :title, :incident, :damn_karen, :location_id]}})
    end

    def create
        
        @location = Location.new(location_params)
           if @location.save
            render json: @location.as_json(include: {karens: {only: [:id, :title, :incident, :damn_karen, :location_id]}})
         else
            render json: @location.errors 
         end
    end

    def update
        @location = Location.new(location_params)
        if @location.update
        render json: @location.as_json(include: {karens: {only: [:id, :title, :incident, :damn_karen, :location_id]}})
        else
           render json: @location.errors 
        end
    end

    private
    def set_location
        @location = Location.find_by_id(params[:id])
    end

    def location_params
        params.require(:location).permit(:id, :city, :state, karens_attributes: [:title, :incident, :damn_karen, :location_id])
    end
end