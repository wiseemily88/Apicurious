class ReposController < ApplicationController

  def index
    github_user = Githubuser.new(current_user)
    @repos = github_user.user_repos

  end

end
