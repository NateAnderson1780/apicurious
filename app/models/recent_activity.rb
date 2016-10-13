class RecentActivity
  attr_reader :email,
              :name,
              :message
              
  def initialize(raw_info)
    @email = raw_info[:payload][:commits][0][:author][:email]
    @name = raw_info[:payload][:commits][0][:author][:name]
    @message = raw_info[:payload][:commits][0][:message]
  end
  
  def self.all_by_user(token, username)
    GithubService.find_recent_activities(token, username).map do |recent_activity|
      if recent_activity[:payload][:commits]
        RecentActivity.new(recent_activity)
      end
    end.compact
  end
  
  def self.all_by_followers(token, username)
    GithubService.find_follower_recent_activities(token, username).map do |follower_recent_activity|
      if follower_recent_activity[:payload][:commits]
        RecentActivity.new(follower_recent_activity)
      end
    end.compact
  end
end