InstagramMediaFeed::Application.routes.draw do

  root :to => "media_feeds#index"

  #match "/auth/:provider/callback" => "sessions#callback"

  match "/auth/instagram/callback" => "sessions#callback"

  match "/signout" => "sessions#destroy"

end
