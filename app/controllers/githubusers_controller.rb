class GithubusersController < ApplicationController


  def show
    @github_user = Githubuser.create_profile(current_user)
  end

end
