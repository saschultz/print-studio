class Membership < ApplicationRecord
  validates(:membership_type, :presence => true)
end
