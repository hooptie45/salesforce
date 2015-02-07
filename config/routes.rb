Rails.application.routes.draw do
  resources :cases

  root 'filters#index'
  resources :filters do
    get 'cases'
  end

  resources :cases

end
