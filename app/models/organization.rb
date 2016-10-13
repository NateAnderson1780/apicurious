class Organization 
  attr_reader :description, :login, :url
  
  def initialize(raw_info)
    @description = raw_info[:description]
    @login = raw_info[:login]
    @url = raw_info[:url]
  end
  
  def self.all_by_user(token)
    GithubService.find_organizations(token).map do |organization|
      Organization.new(organization)
    end
  end
end