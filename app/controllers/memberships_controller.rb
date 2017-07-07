class MembershipsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]

  def index
    @memberships = Membership.all
  end

end
