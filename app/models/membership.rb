class Membership < ApplicationRecord
  validates(:membership_type, :description, :cost, :tools, :cost_rate, :presence => true)
end
