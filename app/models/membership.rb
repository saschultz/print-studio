class Membership < ApplicationRecord
  validates(:membership_type, :description, :presence => true)
end
