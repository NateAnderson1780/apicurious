class Repo 
  attr_reader :name, :url
  
  def initialize(raw_info)
    @name = raw_info[:name]
    @url = raw_info[:owner][:url]
  end
  
  def self.all_by_user(token)
    GithubService.find_repos(token).map do |repo|
      Repo.new(repo)
    end
  end
end