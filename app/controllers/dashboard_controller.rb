class DashboardController < ApplicationController
  def index
    @public_info = GithubUser.get_public_info(current_user.oauth_token) if current_user
    @starred_repo_count = GithubUser.get_starred_repo_count(current_user.oauth_token, current_user.username) if current_user
  end
end