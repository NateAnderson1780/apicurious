class GithubUser 
  attr_reader :avatar_url, 
              :followers, 
              :following, 
              :recent_activity
  
  def initialize(raw_info)
    @avatar_url = raw_info[:avatar_url]
    @followers = raw_info[:followers]
    @following = raw_info[:following]
  end
  
  def self.get_public_info(token)
    GithubUser.new(GithubService.public_info(token))
  end
  
  def self.get_repos(token)
    GithubService.repos(token).map do |raw_repo|
      Repo.new(raw_repo)
    end
  end
  
  def self.get_starred_repo_count(token, username) 
    GithubService.starred_repos(token, username).map do |raw_starred_repo|
      Repo.new(raw_starred_repo)
    end.count
  end
end

# def self.get_recent_activity(token)
#   GithubUser.new(GithubService.recent_activity(token))
# end

# def self.find(uid)
#   raw_user = GithubService.find_by_id(uid)
#   GithubUser.new(raw_user)
# end

# def followers
#   GithubService.followers(uid).map do |raw_follower|
#     GithubUser.new(raw_follower)
#   end
# end