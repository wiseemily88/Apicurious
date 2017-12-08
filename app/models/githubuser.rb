require './app/models/repos'
require './app/models/followers'

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

  def user_follower
    github.followed_user_info.map do |follower|
      Followers.new(follower)
    end
  end

  def user_following
    github.following_user_info.map do |follower|
      Followers.new(follower)
    end
  end


  private

  def github
    @github ||= GithubService.new(@user)
  end


end
