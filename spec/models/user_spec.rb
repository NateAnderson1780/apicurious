require 'rails_helper'

RSpec.describe User, type: :model do
  it "is valid with valid attributes" do
    expect(User.new(username: 'bob', uid: "25", name: 'Bob', oauth_token: "5fg67")).to be_valid
  end
end
