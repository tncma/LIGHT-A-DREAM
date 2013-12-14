Lightadream::Application.routes.draw do
  
  get "ladderup" => "ladder_profiles#new" ,:as => "ladderup"
  resources :ladder_profiles
  get "home/new"

  devise_for :users 
 
  devise_scope :user do 
    get "users/sign_out" => "devise/sessions#destroy"
    root :to => "home#new"
  end

end
