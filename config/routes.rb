Rails.application.routes.draw do
  root to: 'presences#index', :data => Date.today
  post '/presences/register_presence', to: 'presences#register_presence'

  resources :presences
  resources :students
  resources :lessons do
    resources :call_lists
  end
end
