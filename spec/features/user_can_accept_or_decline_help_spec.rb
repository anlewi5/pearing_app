require 'rails_helper'

describe "as a user with requests" do
  let(:default_user) { create(:user, id: 1) }
  let(:request) { create(:request, user: default_user) }

  before do
    helper_user = create(:user, id: 2)
    create(:offer, user: helper_user, request: request)
  end

  scenario "user can accept offers" do
    allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(default_user)

    visit user_requests_path(default_user)

    click_on "Accept Offer"

    expect(page).to have_content("Offer Status: Accepted")
  end

  scenario "user can decline offers" do
    allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(default_user)

    visit user_requests_path(default_user)

    click_on "Decline Offer"

    expect(page).to have_content("Offer Status: Declined")
  end
end
