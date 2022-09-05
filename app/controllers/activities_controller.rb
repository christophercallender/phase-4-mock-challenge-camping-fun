class ActivitiesController < ApplicationController
  # GET /activities
  def index
    activities = Activity.all
    render json: activities
  end

  # DELETE /activities/:id
  def destroy
    activity = Activity.find_by(id: params[:id])
    if activity
      activity.destroy
      render json: { message: "Activity successfully deleted!" }
    else
      render json: { error: "Activity not found" }, status: :not_found
    end
  end
end
