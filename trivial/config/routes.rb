Rails.application.routes.draw do
  resources :players
  get '/' => 'movies#index'
end
