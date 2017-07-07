class MembershipsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @memberships = Membership.all
  end

  def show
    @membership = Membership.find(params[:id])
    @reviews = @membership.reviews.all
  end

end
