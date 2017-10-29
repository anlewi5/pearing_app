require 'rails_helper'


describe "guest becomes user" do
  scenario "guest signs up to be new user" do

    visit '/'

    click_on "Create New Account"

    expect(current_path).to eq(new_user_path)

    fill_in "user[username]", with: "user"
    fill_in "user[password]", with: "test"
    fill_in "user[first_name]", with: "first"
    fill_in "user[last_name]", with: "last"
    fill_in "user[slack_handle]", with: "slack"
    fill_in "user[cohort]", with: 1234

    click_on "Create User"

    expect(page).to have_content("Welcome")
  end
end
