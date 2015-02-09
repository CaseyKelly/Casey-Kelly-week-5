Rails.application.routes.draw do
  resources :locations do
      resources :events
  end

  resources :events
  
root 'welcome#index'

end
