Bloccit::Application.routes.draw do

  get "comments/new"

  get "topics/new"

  devise_for :users

  resources :topics do
    resources :posts, except: [:index]
      resources :comemnts, except: [:index]
  end

  match "about" => 'welcome#about', via: :get

  root :to => 'welcome#index'
end