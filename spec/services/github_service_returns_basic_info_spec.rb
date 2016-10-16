# require 'rails_helper'
# 
# describe "Github Service" do
#   it "returns all repos" do
#     VCR.use_cassette(".get_repos") do
#       repos = GithubService.find_repos(ENV['github_token'])
#       repo = repos.first
#       
#       expect(repos.count).to eq(30)
#       expect(repos.class).to eq(Array)
#       expect(repo.class).to eq (Hash)
#       expect(repo).to have_key(:name)
#       expect(repo[:name].class).to eq(String)
#       expect(repo).to have_key(:html_url)
#       expect(repo[:html_url]).to eq(String)
#     end
#   end
#   
#   it "returns all commits" do 
#     VCR.use_cassette(".get_commits") do 
#       commits = GithubService.get_commits("NateAnderson1780", ENV['github_token'])
#       commit = commits.first
#       
#       expect(commits.count).to eq(30)
#       expect(commits.first[:type].class).to eq(String)
#     end
#   end
# end