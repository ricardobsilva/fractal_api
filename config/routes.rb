Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :students
      resources :class_students
    end
  end
end
