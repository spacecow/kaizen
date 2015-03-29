Rails.application.routes.draw do
  # root 'welcome#index'
  resources :books, only: :index do
    collection do
      get 'with_quantity'
    end 
  end
  resources :shops, only:[:index,:show]
end
