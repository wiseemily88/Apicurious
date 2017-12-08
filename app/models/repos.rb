class Repos
  attr_reader :name, :language, :updated_at

  def initialize(attrs ={})
    @name = attrs[:name]
    @language = attrs[:language]
    @updated_at = attrs[:updated_at]
  end

end
