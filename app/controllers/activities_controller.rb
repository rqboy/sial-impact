class ActivitiesController < ApplicationController

  before_action :find_initiative

  def new
    @activity = Activity.new
    authorize @activity
  end

  def create
    @activity = Activity.new(activity_params)
    @activity.initiative = @initiative
    authorize @activity
    if @activity.save
      redirect_to initiative_path(@initiative)
    else
      render :new
    end
  end

  def activity_params
    params.require(:activity).permit(:title, :description, :objective)
  end

  private

  def find_initiative
    @initiative = Initiative.find(params[:initiative_id])
  end
end
