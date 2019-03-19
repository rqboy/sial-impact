class OutcomeValuesController < ApplicationController
def new
  @outcome = Outcome.find(params[:outcome_id])
  authorize @outcome
  @outcome_value = OutcomeValue.new
end

def create
  @outcome_value = OutcomeValue.new(outcome_params)
  @outcome_value.outcome_id = params[:outcome_id]
  authorize @outcome_value
  @outcome_value.save
  redirect_to initiatives_path
end

private

def outcome_params
  params.require(:outcome_value).permit(:value)
end

end
