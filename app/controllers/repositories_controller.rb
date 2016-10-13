class RepositoriesController < ApplicationController
  def index 
    # @recent_activity = GithubUser.get_recent_activity(current_user.oauth_token)
    @repos = Repo.all_by_user(current_user.oauth_token)
  end
end
