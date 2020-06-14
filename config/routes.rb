Rails.application.routes.draw do

  get 'home/index'

  devise_for :members, controllers: {
    sessions: 'members/sessions'
  }

  get 'welcome/index'
  root 'home#index'

  #this makes emails available at localhost:3000/letter_opener
  mount LetterOpenerWeb::Engine, at: '/letter_opener' if Rails.env.development?
end
