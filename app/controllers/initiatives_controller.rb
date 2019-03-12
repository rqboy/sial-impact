class InitiativesController < ApplicationController
  def index
    @intiatives = policy_scope(Initiative).all
  end

  def show
    @initative = Inititative.find(params[:id])
    authorize @initiative
  end

  def new
    @initiative = Initiative.new
    authorize @initiative
  end

  def create
    @initiative = Initiative.new(initiative_params)
    @initiative.user = current_user
    authorize @initiative
    @initiative.save
    redirect_to root_path
  end

  def edit
    @initiative = Initiative.find(params[:id])
    authorize @initiative
  end

  def update
    @initiative = Initiative.find(params[:id])
    authorize @initiative
    @initiative.update(initiative_params)
    redirect_to initiative_path(@initiative)
  end

  def destroy
    @initiative = Initiative.find(params[:id])
    authorize @initiative
    @initiative.destroy
    redirect_to initiatives_path
  end
end