require 'rails_helper'

describe 'admin actions' do
  it 'allows the admin to go to the rails admin dashboard' do
    user = FactoryGirl.create(:user)
    visit '/'
    click_on 'Sign In'
    fill_in 'user[email]', :with => user.email
    fill_in 'user[password]', :with => user.password
    click_on 'Log in'
    click_on 'Admin'
  end

  it 'allows the admin to create' do
    user = FactoryGirl.create(:user)
    visit '/'
    click_on 'Sign In'
    fill_in 'user[email]', :with => user.email
    fill_in 'user[password]', :with => user.password
    click_on 'Log in'
    visit 'admin'
    first(:link, 'Memberships').click
    click_on 'Add new'
    fill_in 'Membership type', :with => 'New membership'
    fill_in 'Description', :with => 'Trying something new!'
    fill_in 'Tools', :with => 'All tools'
    fill_in 'Cost', :with => 75
    fill_in 'Cost rate', :with => 'year'
    click_on 'Save'
    expect(page).to have_content 'Membership successfully created'
  end

  it 'allows the admin to edit' do
    user = FactoryGirl.create(:user)
    visit '/'
    click_on 'Sign In'
    fill_in 'user[email]', :with => user.email
    fill_in 'user[password]', :with => user.password
    click_on 'Log in'
    visit 'admin'
    first(:link, 'Memberships').click
    click_on 'Add new'
    fill_in 'Membership type', :with => 'New membership'
    fill_in 'Description', :with => 'Trying something new!'
    fill_in 'Tools', :with => 'All tools'
    fill_in 'Cost', :with => 75
    fill_in 'Cost rate', :with => 'year'
    click_on 'Save'
    click_on 'Edit'
    fill_in 'Membership type', :with => 'Year membership'
    click_on 'Save'
    expect(page).to have_content 'Membership successfully updated'
  end

end
