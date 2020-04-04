Rails.application.routes.draw do
  devise_for :users, defaults: {format: :json}, controllers: {
      sessions: 'users/sessions'
  }
end
