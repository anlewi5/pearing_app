require 'rails_helper'


describe "guest becomes user" do
  scenario "user can log in" do
    user = create(user)

    visit '/'

    click_on "Log In"

    expect(current_path).to eq(login_path)

    fill_in "session[username]", with: user.username
    fill_in "session[password]", with: user.password

    click_on "Log In"

    expect(current_path).to eq(user_path(user))
    expect(page).to have_content("Welcome, user!")
  end
end
