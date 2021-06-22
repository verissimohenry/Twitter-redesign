require 'rails_helper'
RSpec.feature 'User' do
  scenario 'A user sign up' do
    visit '/users/sign_up'
    fill_in 'user_username', with: 'user'
    fill_in 'user_email', with: 'example@email.com'
    fill_in 'user_password', with: '123456'
    fill_in 'user_password_confirmation', with: '123456'
    click_on 'Sign up'
    user = User.first
    expect(user.username).to eql('user')
  end
  scenario 'A user visits the sign up page' do
    visit '/users/sign_up'
    expect(page).to have_content('Sign up')
  end
  scenario 'A user visits the log in page from sign up' do
    visit '/users/sign_up'
    click_on 'Log in'
    expect(current_path).to eql('/users/sign_in')
  end
end
