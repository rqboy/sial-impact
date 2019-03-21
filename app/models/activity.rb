class Activity < ApplicationRecord
  belongs_to :initiative
  has_many :outcomes

  def progress
    outcome_progress = outcomes.map { |outcome| outcome.progress }
    return outcome_progress.sum / outcome_progress.count
  end
end
