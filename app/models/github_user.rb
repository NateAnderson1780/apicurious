class GithubUser 
  attr_reader :avatar_url, :followers, :following, :starred_repo_count
  
  def initialize(raw_info)
    @avatar_url = raw_info[:avatar_url]
    @followers = raw_info[:followers]
    @following = raw_info[:following]
    @starred_repo_count = raw_info[:starred_url]
  end
  
  def self.find(uid)
    raw_user = GithubService.find_by_id(uid)
    GithubUser.new(raw_user)
  end
  
  # def followers
  #   GithubService.followers(uid).map do |raw_follower|
  #     GithubUser.new(raw_follower)
  #   end
  # end
  
  def self.get_public_info(token)
    # GithubService.public_info(token).map do |raw_info|
      GithubUser.new(GithubService.public_info(token))
    # end
  end
  
  def self.get_repos(token)
    GithubUser.get_repos(token).map do |raw_repo|
      Repo.new(raw_repo)
    end
  end
end