Rails.application.routes.draw do
  root 'members#index'
  get 'loans/index'
  resources :members do
    resources :contributions
    resources :loans
  end
end
