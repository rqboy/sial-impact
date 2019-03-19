class Activity < ApplicationRecord
  belongs_to :initiative
  has_many :outcomes
end
