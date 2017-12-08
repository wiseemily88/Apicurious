class GithubusersController < ApplicationController
  
  def show
    @github_user = Githubuser.new(current_user)
  end

end
