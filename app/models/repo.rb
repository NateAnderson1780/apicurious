class Repo 
  def all_by_user(user)
    GithubService.find_repos(user)
  end
end