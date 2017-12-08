class StarsController < ApplicationController

  def index
    github_user = Githubuser.new(current_user)
    @stars = github_user.user_starred_repos
  end

end
