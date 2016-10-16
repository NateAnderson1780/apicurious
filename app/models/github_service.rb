class GithubService
  def initialize(token)
    @token    = token
    @conn     = Faraday.new("https://api.github.com")
    conn.headers[:Authorization] = "token #{token}"
  end
  
  def self.public_info(token)
    new(token).public_info
  end
  
  def public_info
    parse("/user")
  end
  
  def self.starred_repos(token, username)
    new(token).starred_repos(username)
    # response = conn.get do |faraday|
    #   faraday.url("/users/#{username}/starred")
    #   faraday.params[:access_token] = token
    # end
    # 
    # # response = Faraday.get("https://api.github.com/users/#{username}/starred?access_token=#{token}")
    # JSON.parse(response.body, symbolize_names: true)
  end
  
  def starred_repos(username)
    parse("/users/#{username}/starred")
  end
  
  def self.find_repos(token)
    new(token).find_repos
  end
  
  def find_repos
    parse("/user/repos")
  end
  
  def self.find_organizations(token)
    new(token).find_organizations
  end
  
  def find_organizations
    parse("/user/orgs")
  end
  
  def self.find_recent_activities(token, username)
    new(token).find_recent_activities(username)
  end
  
  def find_recent_activities(username)
    parse("/users/#{username}/events")
  end
  
  def self.find_follower_recent_activities(token, username)
    new(token).find_follower_recent_activities(username)
  end
  
  def find_follower_recent_activities(username)
    parse("/users/#{username}/received_events")
  end
  
  private
    attr_reader :token, :conn
    
  def parse(url)
    JSON.parse(response(url).body, symbolize_names: true)
  end
  
  def response(url)
    conn.get do |faraday|
      faraday.url(url)
      # faraday.headers[:Authorization] = "token #{token}"
      # faraday.params[:access_token] = token
    end
  end
end
  
  # def self.public_info(token)
  #   # response = conn.get do |faraday|
  #   #   faraday.url("/user")
  #   #   faraday.headers[:Authorization] = "token #{token}"
  #   #   # faraday.params[:access_token] = token
  #   # end
  #   new(token).public_info(token)
  #   # response = Faraday.get("https://api.github.com/user?access_token=#{token}")
  #   JSON.parse(response(token).body, symbolize_names: true)
  # end
  # 
  # 
  # def self.find_repos(token)
  #   response = conn.get do |faraday|
  #     faraday.url("/user/repos")
  #     faraday.params[:access_token] = token
  #   end
  #   
  #   # response = Faraday.get("https://api.github.com/user/repos?access_token=#{token}")
  #   JSON.parse(response.body, symbolize_names: true)
  # end
  # 
  # def self.find_organizations(token)
  #   response = conn.get do |faraday|
  #     faraday.url("/user/orgs")
  #     faraday.params[:access_token] = token
  #   end
  #   
  #   # response = Faraday.get("https://api.github.com/user/orgs?access_token=#{token}")
  #   JSON.parse(response.body, symbolize_names: true)
  # end
  # 
  # def self.find_recent_activities(token, username)
  #   response = conn.get do |faraday|
  #     faraday.url("/users/#{username}/events")
  #     faraday.params[:access_token] = token
  #   end
  #   
  #   # response = Faraday.get("https://api.github.com/users/#{username}/events?access_token=#{token}")
  #   JSON.parse(response.body, symbolize_names: true)
  # end
  # 
  # def self.find_follower_recent_activities(token, username)
  #   # conn = Faraday.new("https://api.github.com")
  #   response = conn.get do |faraday|
  #     faraday.url("/users/#{username}/received_events")
  #     faraday.params[:access_token] = token
  #   end
  #   
  #   # response = Faraday.get("https://api.github.com/users/#{username}/received_events?access_token=#{token}")
  #   JSON.parse(response.body, symbolize_names: true)
  # end
  # 
  

  
