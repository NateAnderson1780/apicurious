require 'rails_helper'

describe "user logs in with github" do
  it "logs you in" do
    visit root_path
    stub_omniauth
    
    expect(page).to have_content("Sign in with Github")
    
    click_on "Sign in with Github"
    expect(page).to have_content("Hello, Nate")
  end
  
end