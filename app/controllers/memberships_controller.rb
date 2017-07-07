class MembershipsController < ApplicationController
  # skip_before_action :authenticate_user!, only: [:show]

  def index
    @memberships = Membership.all
  end

end
