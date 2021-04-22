Rails.application.routes.draw do
  devise_for :members, controller: { members_registration: 'members_registration' }
  root "posts#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :posts, only: [:new, :create, :index]
end
