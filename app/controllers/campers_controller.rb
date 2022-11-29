class CampersController < ApplicationController
    # We want to make sure we are running our find camper function
    # run as soon as the page renders within any action that
    # uses our instance variable.
    before_action :find_camper, only: [:show]

    def index
        render json: Camper.all, status: :ok
    end
    
    # Create an additional 2 serializers for this action to work. First will be
    # CamperActivitySerializer, which will give the camper access to the activies
    # by shoveling the serializer from the CamperSerializer we already made and
    # including the has_many relationship between campers and activities. The second
    # serializer will format the activity data to only include the requested information.
    def show
        render json: @camper, serializer: CamperActivitySerializer, status: :ok
    end
    
    def create
        camper = Camper.create!(camper_params)
        render json: camper, status: :created
    end

    private

    def find_camper
        @camper = Camper.find(params[:id])
    end

    def camper_params
        params.permit(:name, :age)
    end
end
