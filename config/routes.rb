Rails.application.routes.draw do
  root to: "staticpages#home"
  get '/home' => "staticpages#home"
  get '/timeline' => "staticpages#timeline"
  get '/friends' => "staticpages#friends"
  get '/about' => "staticpages#about"
  get '/photos' => "staticpages#photos"
  get '/about_edit' => "staticpages#about_edit"

  resources :users, only: [:new, :create, :show, :edit, :update, :destroy]
  resource :logins, only: [:new, :create, :destroy]
end
