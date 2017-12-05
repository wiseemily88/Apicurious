class User < ApplicationRecord

  def self.from_omniauth(auth_info)
    user = User.find_or_create_by(uid: auth_info[:uid]) do
      user.uid                = auth_info.uid
      user.login              = auth_info.extra.raw_info.login
      user.token              = auth_info.credentials.token
      user.save
    end
  end
end
