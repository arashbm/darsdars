Darsdars::Application.routes.draw do
  root to: 'courses#index'
  devise_for :students
  resources :courses do
    resources :sessions
  end
end
