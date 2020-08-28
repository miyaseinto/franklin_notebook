Rails.application.routes.draw do
  devise_scope :user do
    root "users/sessions#new"
  end
  devise_for :users, :controllers =>{
    sessions: 'users/sessions'
  }
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  resources :diaries, only: [:index, :new, :create, :show, :edit, :update]
  resources :targets, only: [:index, :new]
end
