Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # Nice job restricting routes to only the ones you're prepared to serve!
  resources :bloggers, only: [:new, :create, :show]
  resources :posts, only: [:new, :create, :edit, :update, :show] # you could also say except [:index, delete] here to save a few characters
  resources :destinations, only: [:show]
end
