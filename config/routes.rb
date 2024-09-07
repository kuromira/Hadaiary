Rails.application.routes.draw do
  get 'users/mypage'
  get 'hashtags/show'
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources:posts

  get 'mypage', to:'users#mypage'
  
  #get 'users/sign_in' => 'devise/sessions#new'

  get 'hello/index' => 'hello#index'
  root 'hello#index'

  get 'tests/index' => 'tests#index'
  get 'tests/question1' => 'tests#question1'
  get 'tests/question2' => 'tests#question2'
  get 'tests/question3' => 'tests#question3'
  get 'tests/question4' => 'tests#question4'
  get 'tests/question5' => 'tests#question5'
  get 'tests/show1' => 'tests#show1'
  get 'tests/show2' => 'tests#show2'
  get 'tests/show3' => 'tests#show3'
  get 'tests/show4' => 'tests#show4'
  get 'tests/show5' => 'tests#show5'
  get 'tests/show6' => 'tests#show6'
  get 'tests/show7' => 'tests#show7'
  get 'tests/show8' => 'tests#show8'
  get 'tests/show9' => 'tests#show9'
  get 'tests/show10' => 'tests#show10'
  get 'tests/show11' => 'tests#show11'
  get 'tests/show12' => 'tests#show12'

  resources :hashtags, only: [:show]
end
