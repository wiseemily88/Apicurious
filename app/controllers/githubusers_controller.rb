class GithubusersController < ApplicationController


  def show
    # conn = Faraday.new(url: "https://api.github.com") do |faraday|
    #   faraday.params['access_token'] = current_user.token
    #   faraday.adapter  Faraday.default_adapter
    # end
    # response = conn.get("/users/#{current_user.login}")
    # attrs = JSON.parse(response.body, symbolize_names: true)
    @github_user = Githubuser.create_profile(current_user)

  end

end
