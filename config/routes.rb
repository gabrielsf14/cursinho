Rails.application.routes.draw do
  # resources :admins
  root to: 'presences#index', :data => Date.today
  post '/presences/register_presence', to: 'presences#register_presence'
  get 'qr_codes', to: 'students#qr_codes'

  resources :presences
  resources :students
  resources :lessons do
    resources :call_lists
  end
end
