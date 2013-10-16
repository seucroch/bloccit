Bloccit::Application.routes.draw do

  get "comments/new"

  get "topics/new"

  devise_for :users
  resources :topics do
    resources :posts do
      resources :comments, only: [:create, :destroy]
      match '/up-vote', to: 'votes#up_vote', as: :up_vote
      match '/down-vote', to: 'votes#down_vote', as: :down_vote
    end
  end

  match "about" => 'welcome#about', via: :get

  root :to => 'welcome#index'
end