require "rails_helper"

describe Review do
  it { should validate_presence_of :name }
  it { should validate_presence_of :feedback }
  it { should belong_to :membership }
end
