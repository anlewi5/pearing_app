require 'rails_helper'


describe "user creates request" do
  let(:user) { create(:user) }

  scenario "user creates request" do

    visit user_requests_path(user)

    click_on "Create New Request"

    expect(current_path).to eq(new_users_request_path)

    fill_in "request[title]", with: "request"
    fill_in "request[day]", with: Date.new(2001)
    fill_in "request[start_time]", with: Time.now
    fill_in "request[duration]", with: 2
    fill_in "request[location]", with: "vault"
    fill_in "request[description]", with: "help"

    click_on "Create Request"

    expect(page).to have_content("Request request created!")
  end
end
