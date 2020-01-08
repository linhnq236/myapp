Rails.application.routes.draw do
  mount Ckeditor::Engine => '/ckeditor'
  resources :rooms
  resources :lessons
  devise_for :users
  resources :courses
  root to: "notes#index"
  resources :notes
  namespace "admin" do
    resources :notes
    resources :register_courses
    resources :users
    resources :courses
    resources :people
    resources :subjects
    resources :places
    patch "check_out", to: "places#check_out"
    root to: "notes#index"
  end
  namespace "teacher" do
    resources :courses
    get "timetable", to: "courses#timetable"
    get "export", to: "places#export_course"
    resources :points
    resources :people
    resources :departments
    resources :subjects
    resources :places
    resources :users
    resources :notes
    get "change", to: "users#change"
    root to: "notes#index"
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
    resources :notes
    root to: "courses#timetable"
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
