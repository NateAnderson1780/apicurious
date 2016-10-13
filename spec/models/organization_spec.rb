require 'rails_helper'

RSpec.describe Organization, type: :model do
  it "is valid with valid attributes" do
    raw_info = {description: "A cool org", login: "org_login", url: "www.org.com"}
    org = Organization.new(raw_info)
    
    expect(org.description).to eq("A cool org")
    expect(org.login).to eq("org_login")
    expect(org.url).to eq("www.org.com")
  end
end