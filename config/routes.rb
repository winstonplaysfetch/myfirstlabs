Rails.application.routes.draw do
  get 'sessions/new'
  post '/login', to: 'sessions#create'
  get 'auth/failure', to: redirect('/')
  get 'signout', to: 'sessions#destroy', as: 'signout'

  resources :projects do
    resources :feedbacks
  end
  
  resources :feedbacks do
    resources :projects
    get 'feedbacks'
  end
  
  resources :contacts do
    get 'contacts'
  end

  root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
