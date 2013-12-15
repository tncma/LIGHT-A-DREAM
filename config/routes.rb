Lightadream::Application.routes.draw do
  
  get "dreamer_profiles/new"

  get "events/create"

  get "ladderup" => "ladder_profiles#new" ,:as => "ladderup"
  resources :ladder_profiles
  resources :dreamer_profiles
  resources :events
  resources :eventregistrations
  get "home/new"
  get "/dreamer_profiles/add_event", to: 'dreamer_profiles#show',as: 'register_event' 
 
  devise_for :users
 
  devise_scope :user do 
    get "users/sign_out" => "devise/sessions#destroy"
    root :to => "home#new"
  end

end
