class GithubService
  def self.public_info(token)
    response = Faraday.get("https://api.github.com/user?access_token=#{token}")
    JSON.parse(response.body, symbolize_names: true)
  end
  
  def self.starred_repos(token, username)
    response = Faraday.get("https://api.github.com/users/#{username}/starred?access_token=#{token}")
    JSON.parse(response.body, symbolize_names: true)
  end
  
  def self.find_repos(token)
    response = Faraday.get("https://api.github.com/user/repos?access_token=#{token}")
    JSON.parse(response.body, symbolize_names: true)
  end
  
  def self.find_organizations(token)
    response = Faraday.get("https://api.github.com/user/orgs?access_token=#{token}")
    JSON.parse(response.body, symbolize_names: true)
  end
  
  def self.find_recent_activities(token, username)
    response = Faraday.get("https://api.github.com/users/#{username}/events?access_token=#{token}")
    JSON.parse(response.body, symbolize_names: true)
  end
  
  def self.find_follower_recent_activities(token, username)
    response = Faraday.get("https://api.github.com/users/#{username}/received_events?access_token=#{token}")
    JSON.parse(response.body, symbolize_names: true)
  end
end
  # def self.recent_activity(token)
  #   response = Faraday.get("https://api.github.com/feeds?access_token=#{token}")
  #   JSON.parse(response.body, symbolize_names: true)
  # end
  # 
  # def find_by_id(uid)
  #   
  # end
  # 
  # def followers
  #   
  # end
  
  # expect(repo.class).to eq(Hash)
  
  # def self.get_public_info(token)
  #   GithubService.public_info(token)
  # end
