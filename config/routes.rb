Rails.application.routes.draw do
  devise_for :users# :controllers => {registrations: "registrations"}
  devise_scope :user do
    get "/users/sign_out" => "devise/sessions#destroy"
  end
  resources :users, :events, :invites
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "events#index"
  get "show/event/:id" => "events#show", as: "show_event"
  get "users/show" => "users#show"
  get "new/event" => "events#new"
  post "events/:id" => "invites#create"
  put "events/:id" => "invites#update", as: "update_invite"
end
