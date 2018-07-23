Rails.application.routes.draw do
  get 'login', to: 'sessions#new', as: 'login'
  post '/login', to: 'sessions#create'
  get 'auth/failure', to: redirect('/')
  get 'logout', to: 'sessions#destroy', as: 'logout'

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
