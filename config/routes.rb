Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      get 'employees/inex'
      get 'employees/show'
    end
  end
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
