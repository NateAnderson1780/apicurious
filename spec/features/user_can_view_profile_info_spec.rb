require 'rails_helper'

describe "User Views Profile" do
  it "can see their profile info" do
    visit root_path
    expect(page).to_not have_content("Profile Pic")
    login_in_user
    expect(page).to have_content("Profile Pic")

    within(".followers") do
      expect(page).to have_content(0)
    end
    
    within(".following") do
      expect(page).to have_content(0)
    end
  end
end