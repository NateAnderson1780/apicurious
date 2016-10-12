class DashboardController < ApplicationController
  def index
    @public_info = GithubUser.get_public_info(current_user.oauth_token) if current_user
  end
  
  def show 
    
    # @repos = Repo.all_by_user(current_user)
  end
end