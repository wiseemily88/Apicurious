class Githubuser
  attr_reader :image, :login

  def initialize(attrs = {})
    @image = attrs[:avatar_url]
    @login = attrs[:login]
  end

  def self.create_profile(current_user)
    user = current_user
    github = GithubService.new(user)
    user_info = github.profile_info
    Githubuser.new(user_info)
  end


end
