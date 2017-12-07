require './app/models/repos'

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

  def user_repos(current_user)
    github = GithubService.new(current_user)
    github.repos_info.map do |repo|
      Repos.new(repo)
    end


  end

  private
  def self.githubservice(user)
    GithubService.new(user)
  end

end
