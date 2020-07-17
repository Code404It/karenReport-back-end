class KarensController < ApplicationController
    
    def update
   
        @karen = Karen.find_by_id(params[:id])
        if @karen.update(karen_params)
           
           render json: @karen 
           
        else
            render json: @karen.errors, status: :unprocessable_entity
        end
    end

    private
    

    def karen_params
        params.require(:karen).permit(:title, :incident, :damn_karen, :location_id)
    end
end