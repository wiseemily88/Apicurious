def stub_omniauth

  OmniAuth.config.test_mode = true

  OmniAuth.config.mock_auth[:github] = OmniAuth::AuthHash.new({
  "provider"=>"github",
   "uid"=>"24700836",
    "credentials"=>{"token"=>"5a8d6c058a8b89c092e7b297a8b2e84ed83456f0", "expires"=>false},
      "extra"=>
        {"raw_info"=>
          {"login"=>"wiseemily88",
           "avatar_url"=>"https://avatars1.githubusercontent.com/u/24700836?v=4",
           "followers_url"=>"https://api.github.com/users/marshallhouston/followers",
           "following_url"=>"https://api.github.com/users/marshallhouston/following{/other_user}",
           "gists_url"=>"https://api.github.com/users/marshallhouston/gists{/gist_id}",
           "starred_url"=>"https://api.github.com/users/marshallhouston/starred{/owner}{/repo}",
           "subscriptions_url"=>"https://api.github.com/users/marshallhouston/subscriptions",
           "organizations_url"=>"https://api.github.com/users/marshallhouston/orgs",
           "repos_url"=>"https://api.github.com/users/marshallhouston/repos",
           "events_url"=>"https://api.github.com/users/marshallhouston/events{/privacy}",
           "received_events_url"=>"https://api.github.com/users/marshallhouston/received_events",
           "public_repos"=>42,
           "public_gists"=>15,
           "followers"=>2,
           "following"=>6,
           "total_private_repos"=>0,
           "owned_private_repos"=>0,
        }}})
end
