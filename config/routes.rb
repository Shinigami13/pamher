Rails.application.routes.draw do
  devise_for :users
  resources :users
  # root 'users#new'

  get 'students/index'
  get 'students/show'
  get 'students/new'
  get 'students/edit'
  get 'students/destroy'
  #5

  get 'instructors/index'
  get 'instructors/show'
  get 'instructors/new'
  get 'instructors/edit'
  get 'instructors/destroy'
  #5

  get 'courses/index'
  get 'courses/show'
  get 'courses/new'
  get 'courses/edit'
  get 'courses/destroy'
  #5

  get 'cohorts/index'
  get 'cohorts/show'
  get 'cohorts/new'
  get 'cohorts/create'
  get 'cohorts/edit'
  get 'cohorts/update'
  get 'cohorts/destroy'
  #7

  get 'users/create'
  get 'users/edit'
  get 'users/destory'
  get 'users/show'
  get 'users/index'
  get 'users/new'
  get 'users/update'
  #7
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
