class GithubusersController < ApplicationController


  def show
    @github_user = Githubuser.new(current_user)
    
    # create_profile(current_user)
  end

end
