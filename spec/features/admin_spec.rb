require 'rails_helper'

describe 'admin actions' do
  it 'permits the admin to go to the rails admin dashboard' do
    user = FactoryGirl.create(:user)
    visit '/'
    click_on 'Sign In'
    fill_in 'user[email]', :with => user.email
    fill_in 'user[password]', :with => user.password
    click_on 'Log in'
    click_on 'Admin'
  end

end
