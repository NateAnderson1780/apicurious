require 'rails_helper'

describe "User Views Recent Activity" do
  it "can see their recent_activity" do
    visit root_path
    login_in_user
    click_on "Recent Activity"
    
    expect(current_path).to eq('/recent_activities')
    
    click_on "Follower Recent Activity"
    expect(current_path).to eq('/recent_activities/followers')

    expect(page).to have_content("Followers Recent Activity:")
  end
end