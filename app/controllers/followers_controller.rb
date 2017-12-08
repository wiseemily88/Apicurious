class FollowersController < ApplicationController

  def index
    github_user = Githubuser.new(current_user)
    @followering = github_user.user_following
  end

end
