require './app/models/repos'

class Githubuser
  attr_reader :user

  def initialize (user)
    @user = user
  end

  def retrieve_image
   github.profile_info[:avatar_url]
  end

  def user_repos
    github.repos_info.map do |repo|
      Repos.new(repo)
    end
  end

  def user_starred_repos
    github.starred_repos_info.map do |repo|
      Repos.new(repo)
    end
  end
  

  private

  def github
    @github ||= GithubService.new(@user)
  end


end
