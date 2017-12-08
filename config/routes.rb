Rails.application.routes.draw do

root 'welcome#index'
get '/auth/github', as: :github_login
get '/auth/github/callback', to: 'sessions#create'
get '/logout', to: 'sessions#destory', as: :logout_path
get '/profile', to: 'githubusers#show'
get '/following', to: 'following#index'
get '/repos', to: 'repos#index'
get '/stars', to: 'stars#index'
get '/followers', to: 'followers#index'
end
