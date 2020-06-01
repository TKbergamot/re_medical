# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :admin
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  root 'home#index'
  get 'about', to: 'home#about'
  get '/infiniteScrolling', to: "posts#infiniteScrolling"

  devise_for :doctors, controolers: {
    sessions: 'doctors/sessions',
    passwords: 'doctors/passwords',
    registrations: 'doctors/registrations'
  }

  devise_for :patients, controllers: {
    sessions: 'patients/sessions',
    passwords: 'patients/passwords',
    registrations: 'patients/registrations'
  }

  resource :patient, only: %i[show]
  resources :doctors, only: %i[show update]
  resources :posts
  resources :opinions, :patient_comments, :doctor_comments, only: %i[create update destroy]
  resources :hospitals

end
