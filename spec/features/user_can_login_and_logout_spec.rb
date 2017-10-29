require 'rails_helper'

describe "user login and logout" do
  let(:user) { create(:user) }

  def fill_in_user_credientials
    fill_in "session[username]", with: user.username
    fill_in "session[password]", with: user.password
  end

  scenario "user can log in" do
    visit '/'
    click_on "Log In"

    expect(current_path).to eq(login_path)

    fill_in_user_credientials
    click_on "Log In"

    expect(current_path).to eq(user_path(user))
    expect(page).to have_content("Welcome")
  end

  scenario "user can log out" do
    visit '/'
    click_on "Log In"
    fill_in_user_credientials
    click_on "Log In"

    expect(page).to have_link("Log Out")

    click_on "Log Out"

    expect(current_path).to eq(root_path)
  end
end
