class GithubService
  def find_repos(user)
    Faraday.get()
  end
  
  def find_by_id(uid)
    
  end
  
  def followers
    
  end
  
  def self.public_info(token)
    response = Faraday.get("https://api.github.com/user?access_token=#{token}")
    JSON.parse(response.body, symbolize_names: true)
  end
  
  # expect(repo.class).to eq(Hash)
  
  # def self.get_public_info(token)
  #   GithubService.public_info(token)
  # end
end