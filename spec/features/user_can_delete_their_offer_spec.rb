require 'rails_helper'

describe "user deletes offer" do

  scenario "user deletes offer" do
    requester_user = create(:user, id: 1)
    request = create(:request, user: requester_user)
    helper_user = create(:user, id: 2)
    allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(helper_user)
    create(:offer, user: helper_user, request: request)

    visit user_offers_path(helper_user)
    save_and_open_page
    click_on "Delete Offer"
    save_and_open_page
    expect(page).not_to have_content("Offer Status: Accepted")
  end
end
