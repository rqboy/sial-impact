class Outcome < ApplicationRecord
  belongs_to :activity
  has_many :outcome_values

  def progress
    if objective_value >= 1
      progress_for_integer
    else
      progress_for_percentage
    end
  end

  def chart_array
    outcome_values.map do |outcome_value|
      [outcome_value.created_at.strftime("%b"), outcome_value.value]
    end
  end

  private

  def progress_for_percentage
    (outcome_values.pluck(:value).sum / outcome_values.pluck(:value).count) / objective_value
  end

  def progress_for_integer
    outcome_values.pluck(:value).sum / objective_value
  end
end
