class RecentActivity
  def initialize(raw_info)
    @raw_info = raw_info
  end
  
  def all_by_user(token)
    GithubService.find_recent_activities(token).map do |recent_activity|
      RecentActivity.new(recent_activity)
    end
  end
end