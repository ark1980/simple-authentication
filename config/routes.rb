Rails.application.routes.draw do
  root to: 'posts#index' 
  resources :posts
  get "sign_up" => "users#new", :as => "sign_up"
end
