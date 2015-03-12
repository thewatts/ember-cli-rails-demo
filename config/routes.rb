Rails.application.routes.draw do
  mount EmberCLI::Engine => "ember-tests" if Rails.env.development?

  namespace :api do
    resources :events
  end

  get "/admin", to: "admin#index"
  get "/admin/*path", to: "admin#index"
end
