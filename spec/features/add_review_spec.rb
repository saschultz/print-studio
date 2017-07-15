require 'rails_helper'

describe "add a review process" do
  it 'adds a review if authenticated user' do
    user = FactoryGirl.create(:user)
    membership = FactoryGirl.create(:membership)
    review = FactoryGirl.create(:review)
    visit '/'
    click_on 'Sign In'
    fill_in 'user[email]', :with => user.email
    fill_in 'user[password]', :with => user.password
    click_on 'Log in'
    click_link 'MEMBERSHIPS'
    click_link 'Full Membership'
    click_link 'add review'
    fill_in 'review[name]', :with => review.name
    fill_in 'review[feedback]', :with => review.feedback
    click_on 'submit'
    expect(page).to have_content 'Dana'
  end
end
