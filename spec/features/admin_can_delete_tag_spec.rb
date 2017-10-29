require 'rails_helper'

describe "admin deletes tag" do
  let(:admin_user) { create(:admin) }

  scenario "admin deletes tag" do
    allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(admin_user)
    create(:tag)

    visit tags_path

    click_on "Delete Tag"

    expect(page).not_to have_content("Taggy Tag Tag")
  end
end
