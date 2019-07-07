Rails.application.routes.draw do
  get 'posts/home'
  get 'posts/about'
  get 'posts/contact'
  resources :blogs
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
