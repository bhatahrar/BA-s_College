Rails.application.routes.draw do

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Render dynamic PWA files from app/views/pwa/* (remember to link manifest in application.html.erb)
  # get "manifest" => "rails/pwa#manifest", as: :pwa_manifest
  # get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker

  # Defines the root path route ("/")
  # root "posts#index"

    resources :students, only: [:new, :create, :show,:index]
    # resources :results,only: [:show]
    get "results/search",to:'results#search'
    post 'results/show_by_id', to: 'results#show_by_id'

    get "admissions/search",to:'admissions#search'
    post 'admissions/show_by_id', to: 'admissions#show_by_id'
     get "courses/search",to:'courses#search'
    post 'courses/show_by_id', to: 'courses#show_by_id'
    root "mains#main" 

 get 'login', to: 'sessions#new'
post 'login', to: 'sessions#create'
get "logout", to: "sessions#destroy"


resources :users,only:[:new,:create]
resources :college_notifications, only: [:index, :new, :create]

resources :applications 
# do
#   member do
#     patch :approve
#     patch :reject
#   end
# end



patch "/applications/:id/approve", to: "applications#approve", as: "approve_application"
patch "/applications/:id/reject", to: "applications#reject", as: "reject_application"
end
