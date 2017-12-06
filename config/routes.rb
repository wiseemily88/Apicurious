Rails.application.routes.draw do

root 'welcome#index'
get '/auth/github', as: :github_login
get '/auth/github/callback', to: 'sessions#create'
get '/logout', to: 'sessions#destory', as: :logout_path
get '/profile', to: 'users#show'
end
