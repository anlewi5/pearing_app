require 'rails_helper'

describe "admin creates tag" do

  scenario "admin creates tag" do
    admin = create(:admin)
    allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(admin)

    visit admin_tags_path

    click_on "Create New Tag"
    expect(current_path).to eq(new_admin_tag_path)

    fill_in "tag[title]", with: "tag title"

    click_on "Save Tag"

    expect(page).to have_content("tag title")
  end
end
