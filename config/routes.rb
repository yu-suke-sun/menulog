Rails.application.routes.draw do
  root to: 'menus#index'
  resources :menus do
    collection do
      get 'search'
    end
  end
end
