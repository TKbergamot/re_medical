Rails.application.routes.draw do
  devise_for :doctors, controolers:{
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
  resources :posts
  resources :opinions
  resources :patient_comments
  resources :doctor_comments
  resources :hospitals
  resources :departments
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
