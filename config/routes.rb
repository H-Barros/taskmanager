Rails.application.routes.draw do
  root 'tasks#index'

  resources :tasks, except: %i[show] do
    collection do
      get :export_csv
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
