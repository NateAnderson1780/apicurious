require 'rails_helper'

RSpec.describe GithubUser, type: :model do
  it "is valid with valid attributes" do
    raw_info = {avatar_url: "www.avatarurl.com", 
                followers: 50, 
                following: 100}
                
    gh_user = GithubUser.new(raw_info)
    
    expect(gh_user.avatar_url).to eq("www.avatarurl.com")
    expect(gh_user.followers).to eq(50)
    expect(gh_user.following).to eq(100)
  end
end