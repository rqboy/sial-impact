Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :initiatives do
    resources :activities
  end
  resources :outcomes do
    resources :outcome_values
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
