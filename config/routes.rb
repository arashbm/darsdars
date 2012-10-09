Darsdars::Application.routes.draw do
  root to: 'courses#index'
  devise_for :students
  resource :student, only: [:edit, :update, :show]
  resources :courses do
    resources :sessions
  end
end
