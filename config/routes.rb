Rails.application.routes.draw do
  root 'selfie#index'
  
  resources :selfies

end
