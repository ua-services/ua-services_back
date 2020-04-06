Rails.application.routes.draw do
  devise_for :users, defaults: { format: :json }, controllers: {
      sessions: 'users/sessions', registrations: 'users/registrations'
  }

  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :users
    end
  end
end
