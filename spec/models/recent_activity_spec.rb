require 'rails_helper'

RSpec.describe RecentActivity, type: :model do
  it "is valid with valid attributes" do
    raw_info = {payload: {commits: [{message: "add tests", author: {email: "blah@gmail.com", name: "Bob"}}]}} 
                
    recent_activity = RecentActivity.new(raw_info)
    
    expect(recent_activity.email).to eq("blah@gmail.com")
    expect(recent_activity.name).to eq("Bob")
    expect(recent_activity.message).to eq("add tests")
  end
end