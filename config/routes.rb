Bloccit::Application.routes.draw do

  get "comments/new"

  get "topics/new"

  devise_for :users

  resources :topics do
    resources :posts do
      resources :comments
    end
  end

  match "about" => 'welcome#about', via: :get

  root :to => 'welcome#index'
end