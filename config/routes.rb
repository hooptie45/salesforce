Rails.application.routes.draw do

  resources :labels

  root 'filters#index'
  resources :filters do
    get 'cases'
  end

  resources :cases

end
