Rails.application.routes.draw do
  devise_for :users, path: 'api/v1/user', defaults: { format: :json }, controllers: {
      sessions: 'api/v1/user/sessions', registrations: 'api/v1/user/registrations'
  }

  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :users
    end
  end
end
