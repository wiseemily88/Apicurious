Rails.application.config.middleware.use OmniAuth::Builder do
  provider :github, ENV['b244c21fa74fed9e99d8'], ENV['46f5a1843b9a6ae53063db3eeab37f4947027d5d']
end
