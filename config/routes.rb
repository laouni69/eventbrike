Rails.application.routes.draw do
  

  get 'events/new'

  get 'events/show'

  get 'sessions/new'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    
    root 'static_pages#home'
    
    resources :users
    
    get  '/signup',  to: 'users#new'
    post '/signup',  to: 'users#create'
    
    get    '/login',   to: 'sessions#new'
    post   '/login',   to: 'sessions#create'
    delete '/logout',  to: 'sessions#destroy'

    resources :events do 
      post 'attend', on: :member
    end
end

 