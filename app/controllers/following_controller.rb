class FollowingController < ApplicationController

  def index
    github_user = Githubuser.new(current_user)
    @followers = github_user.user_following

  end

end
