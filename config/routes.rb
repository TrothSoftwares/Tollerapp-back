Rails.application.routes.draw do
  resources :examschedulesets
  resources :examassignations
  resources :examtimings
  resources :assignations
  resources :timings
  resources :schedulesets
  resources :audios
  devise_for :users, defaults: { format: :json } ,controllers: { sessions: 'sessions' , registrations: 'users'  }
  resources :users, only: [:create , :index , :update ,:show]


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
