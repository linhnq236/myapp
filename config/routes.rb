Rails.application.routes.draw do
  resources :lessons
  devise_for :users
  resources :courses
  root to: "notes#index"
  resources :notes
  namespace "admin" do
    resources :register_courses
    resources :users
    resources :courses
    resources :people
    resources :subjects
    resources :places
    root to: "places#index"
  end
  namespace "teacher" do
    resources :courses
    resources :people
    resources :departments
    resources :subjects
    resources :places
    root to: "places#index"
  end
  namespace "student" do
    resources :courses
    resources :users
    get "register", to: "courses#show"
    get "timetable", to: "courses#timetable"
    resources :people
    resources :departments
    resources :subjects
    resources :places
    root to: "courses#timetable"
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end