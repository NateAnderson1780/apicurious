require 'rails_helper'

describe "User Views Organizations" do
  it "can see their organizations" do
    login_in_user
    click_on "Organizations"
    
    expect(page).to have_content("Your Organizations")
  end
end