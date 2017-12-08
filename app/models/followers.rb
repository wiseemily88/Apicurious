class Followers
  attr_reader :login, :image

  def initialize(attrs ={})
    @login = attrs[:login]
    @image = attrs[:avatar_url]
  end

end
