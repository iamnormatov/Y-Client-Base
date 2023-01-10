Rails.application.routes.draw do
  resources :xurs
  resources :tds

  root "projects#index"

  devise_for :users
  
  resources :mboards
  
  resources :mbs
  
  resources :projects do
    
    resources :mboards

    resources :tds
     
    resources :xurs
    
  end
  
end
