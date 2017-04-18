Rails.application.routes.draw do
  get 'welcome/index'

  resources :projects do
    resources :feedbacks
  end
  resources :feedbacks do
    get 'feedbacks'
  end
  
  resources :contacts do
    get 'contacts'
  end

  root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
