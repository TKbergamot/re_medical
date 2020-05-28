# frozen_string_literal: true

Rails.application.routes.draw do
  root 'home#index'
  get 'about', to: 'home#about'
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

  resource :patient
  resources :doctors
  resources :posts, :opinions, :patient_comments, :doctor_comments
  resources :hospitals
  resources :departments

end
