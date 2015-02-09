Rails.application.routes.draw do
  resources :locations do
      resources :events
  end

  resources :events

root 'locations#index'

end
