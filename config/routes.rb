Rails.application.routes.draw do
  root to: 'lists#index'
  # get 'movies/title'
  # get 'movies/overview'
  # get 'movies/poster_url'
  # get 'movies/rating'
  # get 'lists/name'
  # get 'bookmarks/comment'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :lists do
    resources :movies
    resources :bookmarks
    # routes to #destroy
  end
  resources :bookmarks, only: :destroy
end
