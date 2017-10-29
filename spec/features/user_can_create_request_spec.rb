require 'rails_helper'

describe "user creates request" do
  let(:default_user) { create(:user, id: 1) }

  scenario "user creates request" do
    allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(default_user)

    visit user_requests_path(default_user)

    within('div.request-index') do
      click_on "Create New Request"
    end
    expect(current_path).to eq(new_user_request_path(default_user))

    fill_in "request[title]", with: "request"
    fill_in "request[day]", with: Date.new(2001)
    fill_in "request[start_time]", with: Time.now
    fill_in "request[duration]", with: 2
    fill_in "request[location]", with: "vault"
    fill_in "request[description]", with: "help"

    click_on "Create Request"

    expect(page).to have_content("Title: request")
  end
end
