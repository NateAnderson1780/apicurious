require 'rails_helper'

describe "User Views Profile" do
  it "can see their profile info" do
    visit root_path
    expect(page).to_not have_content("Bio")
    login_in_user
    expect(page).to have_content("Bio")

    within(".bio") do
      expect(page).to have_content("nathanielanderson25@gmail.com")
    end
    
    within(".public-repos") do
      expect(page).to have_content(30)
    end
  end
end