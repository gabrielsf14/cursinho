Rails.application.routes.draw do
  root to: 'presences#index', :data => Date.today
  resources :presences
  resources :students
  resources :lessons do
    resources :call_lists
  end
end
