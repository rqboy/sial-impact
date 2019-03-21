class Activity < ApplicationRecord
  belongs_to :initiative
  has_many :outcomes

  def progress
    outcome_progress = self.outcomes.map do |outcome|
      if outcome.objective_value >= 1
        progress_for_integer(outcome)
      else
        progress_for_percentage(outcome)
      end
    end
    return outcome_progress.sum / outcome_progress.count
  end

  private

  def progress_for_percentage(outcome)
    (outcome.outcome_values.pluck(:value).sum/outcome.outcome_values.pluck(:value).count)/outcome.objective_value
  end

  def progress_for_integer
    outcome.outcome_values.pluck(:value).sum/outcome.objective_value
  end
end
