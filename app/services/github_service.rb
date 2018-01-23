class GithubService
  attr_reader :user, :conn

  def initialize(user)
    @user = user
    # @conn = Faraday.new(url: "https://api.github.com") do |faraday|
    #   faraday.params['access_token'] = @user.token
    #   faraday.adapter  Faraday.default_adapter
    # end

  end

  def profile_info
    response = @conn.get("/users/#{@user.login}")
    attrs = JSON.parse(response.body, symbolize_names: true)
  end

  def repos_info
    response = @conn.get("/users/#{@user.login}/repos")
    attrs = JSON.parse(response.body, symbolize_names: true)
  end

  def starred_repos_info
    response = @conn.get("/users/#{@user.login}/starred")
    attrs = JSON.parse(response.body, symbolize_names: true)
  end

  def followed_user_info
    response = @conn.get("/users/#{@user.login}/followers")
    attrs = JSON.parse(response.body, symbolize_names: true)
  end

  def following_user_info
    response = @conn.get("/users/#{@user.login}/following")
    attrs = JSON.parse(response.body, symbolize_names: true)
  end


  private
  attr_reader :current_user
  
  def connection
    @conn ||= Faraday.new(url: "https://api.github.com") do |faraday|
      faraday.params['access_token'] = @user.token
      faraday.adapter  Faraday.default_adapter
    end
  end

end
