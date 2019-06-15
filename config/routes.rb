Rails.application.routes.draw do
  resources :students
  resources :lessons do
    resources :call_lists
  end
end
