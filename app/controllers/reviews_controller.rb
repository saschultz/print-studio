class ReviewsController < ApplicationController

  def new
    @membership = Membership.find(params[:membership_id])
    @review = @membership.reviews.new
  end

end
