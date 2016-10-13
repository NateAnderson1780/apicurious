require 'rails_helper'

RSpec.describe Repo, type: :model do
  it "is valid with valid attributes" do
    raw_info = {name: "Rush Hour", owner: {url: "www.rush_hour.com"}}
    repo = Repo.new(raw_info)
    
    expect(repo.name).to eq("Rush Hour")
    expect(repo.url).to eq("www.rush_hour.com")
  end
end
