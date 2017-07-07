class Membership < ApplicationRecord
  validates(:membership_type, :description, :cost, :tools, :presence => true)
end
