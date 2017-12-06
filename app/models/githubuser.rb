class Githubuser
  attr_reader :image, :login

  def initialize(attrs = {})
    @image = attrs[:avatar_url]
    @login = attrs[:login]
  end
end
