require "rails_helper"

describe Membership do
  it { should validate_presence_of :membership_type }
end
