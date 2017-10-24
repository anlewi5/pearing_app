require 'rails_helper'

describe "user logout" do
  scenario "user logs out" do
    user = create(user)
    visit 'user_show_path(user)'
    expect(page).to have_link("Log Out")

    click_on "Log Out"

    expect(current_path).to eq(root_path)
  end
end
