require 'rails_helper'

describe "User Views Recent Activity" do
  it "can see their recent_activity" do
    login_in_user
    click_on "Recent Activity"

    expect(page).to have_content("Your Recent Activity:")
  end
end