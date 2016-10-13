require 'rails_helper'

describe "User Views Repositories" do
  it "can see their repositories" do
    visit root_path
    login_in_user
    click_on "Repositories"

    expect(page).to have_content("rush-hour")
  end
end