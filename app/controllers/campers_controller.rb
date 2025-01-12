class CampersController < ApplicationController
  # GET /campers
  def index
    campers = Camper.all
    render json: campers
  end

  # GET /campers/:id
  def show
    camper = Camper.find_by(id: params[:id])
    if camper
      render json: camper, include: :activities
    else
      render json: { error: "Camper not found" }, status: :not_found
    end
  end

  # POST /campers
  def create
    camper = Camper.new(camper_params)
    if camper.valid?
      camper.save
      render json: camper, status: :created
    else
      render json: {
               errors: camper.errors.full_messages
             },
             status: :unprocessable_entity
    end
  end

  private

  def camper_params
    params.permit(:name, :age)
  end
end
