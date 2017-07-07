class ReviewsController < ApplicationController

  def new
    @membership = Membership.find(params[:membership_id])
    @review = @membership.reviews.new
  end

  def create
    @membership = Membership.find(params[:membership_id])
    @review = @membership.reviews.new(review_params)
    if @review.save
      redirect_to membership_path(@review.membership)
    else
      render :new
    end
  end

private
  def review_params
    params.require(:review).permit(:name, :feedback)
  end  
end
