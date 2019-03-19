class Outcome < ApplicationRecord
  belongs_to :activity
  has_many :outcome_values
end
