Rails.application.routes.draw do

root 'welcome#index'
get '/auth/github', as: :github_login
end
