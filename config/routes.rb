Rails.application.routes.draw do
  get 'games/index'
  get 'games/show'
  get 'games/new'
  get 'games/create'
  get 'games/edit'
  get 'games/update'
  get 'games/destroy'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :games
  resources :categories
end
