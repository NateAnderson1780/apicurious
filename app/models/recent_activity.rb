class RecentActivity
  def initialize(raw_info)
    if !raw_info[:payload][:commits].nil?
      @email = raw_info[:payload][:commits][0][:author][:email]
      @name = raw_info[:payload][:commits][0][:author][:name]
      @message = raw_info[:payload][:commits][0][:message]
    end
  end
  
  def self.all_by_user(token, username)
    GithubService.find_recent_activities(token, username).map do |recent_activity|
      RecentActivity.new(recent_activity)
    end
  end
end