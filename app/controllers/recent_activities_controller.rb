class RecentActivitiesController < ApplicationController
  def index 
    # @recent_activity = GithubUser.get_recent_activity(current_user.oauth_token)
    @recent_activity = RecentActivity.all_by_user(current_user.oauth_token)
  end
end