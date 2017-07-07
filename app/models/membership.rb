class Membership < ApplicationRecord
  validates(:membership_type, :description, :tools, :presence => true)
end
