require 'rails_helper'

describe "as a user" do
  let(:requester_user) { create(:user, id: 1) }
  let(:request) { create(:request, user: requester_user) }
  let(:helper_user) { create(:user, id: 2) }

  before do
    create(:offer, user: helper_user, request: request)
  end

  scenario "helper_user can read all requests for their offers" do
    allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(helper_user)

    visit user_offers_path(helper_user)

    expect(page).to have_content("Request Title")
    expect(page).to have_content("Offer Status: Accepted")
  end
end
