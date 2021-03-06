class InitiativesController < ApplicationController
  def index
    if current_user.role == "gestionnaire"
      @initiatives = Initiative.where(user_id: current_user.id)
    elsif current_user.role == "entrepreneur"
      @current_initiative = current_user.initiatives_ent.first
      authorize @current_initiative
      redirect_to initiative_path(@current_initiative)
    end

    if params[:query].present?
      @initiatives = policy_scope(Initiative).where("name ILIKE ?", "%#{params[:query]}%")
      # raise
    else
      @initiatives = policy_scope(Initiative)
    end
  end

  def show
    @initiative = Initiative.find(params[:id])
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
    redirect_to initiatives_path
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

  def initiative_params
    params.require(:initiative).permit(:name, :description, :sector_activity, :country, :budget, :photo)
  end
end
