require 'rails_helper'


describe "user logout" do
  scenario "user logs out" do
    visit 'user_show_path'
    expect(page).to have_link("Log Out")

    click_on "Log Out"

    expect(current_path).to eq(root_path)
  end
end
