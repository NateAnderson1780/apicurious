class RecentActivitiesController < ApplicationController
  def index
    # @recent_activity = GithubUser.get_recent_activity(current_user.oauth_token)
    @recent_activities = RecentActivity.all_by_user(current_user.oauth_token, current_user.username)
  end
  
  def show
    @followers_recent_activities = RecentActivity.all_by_followers(current_user.oauth_token, current_user.username)
  end
end