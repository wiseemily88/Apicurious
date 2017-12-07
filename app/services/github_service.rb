class GithubService

  def initialize(user)
    @user = user
    @conn = Faraday.new(url: "https://api.github.com") do |faraday|
      faraday.params['access_token'] = user.token
      faraday.adapter  Faraday.default_adapter
    end
    # response = conn.get("/users/#{current_user.login}")
    # attrs = JSON.parse(response.body, symbolize_names: true)
  end

  def profile_info
    response = @conn.get("/users/#{@user.login}")
    attrs = JSON.parse(response.body, symbolize_names: true)
  end
end
