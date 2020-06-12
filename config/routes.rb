Rails.application.routes.draw do

  get 'home/index'

  devise_for :members, controllers: {
    sessions: 'members/sessions'
  }

  get 'welcome/index'
  root 'home#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
