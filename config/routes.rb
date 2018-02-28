Rails.application.routes.draw do
  get 'people/index'

  get 'people/show'

  get 'people/new'

  get 'static_pages/home'

  get 'static_pages/about'

  root 'static_pages#home'

  get '/about', to: 'static_pages#about'

  resources :people
end