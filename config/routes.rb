Rails.application.routes.draw do
  # root 'welcome#index'
  resources :books, only: :index
  resources :shops, only:[:index,:show]
end
