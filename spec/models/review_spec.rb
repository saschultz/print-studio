require "rails_helper"

describe Review do
  it { should validate_presence_of :name }
  it { should validate_presence_of :feedback }
end
