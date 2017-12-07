class User < ApplicationRecord

  def self.from_omniauth(auth_info)

     user = User.find_or_create_by(uid: auth_info[:uid]) do |user|
      user.uid                = auth_info.uid
      user.login              = auth_info.extra.raw_info.login
      user.token              = auth_info.credentials.token
    end
    check_token_status(user, auth_info)
    user
  end

  def self.check_token_status(user, auth_info)
    if user.token != auth_info.credentials.token
      user.update(token: auth_info.credentials.token)
    end
  end
end
