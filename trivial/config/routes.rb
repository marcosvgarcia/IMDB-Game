Rails.application.routes.draw do
  
  get '/' => 'players#index'
  get '/players/:id/game/' => 'players#game', as: "game_player"
  get 'players/:id/points_up' => 'players#points_up'
  get '/players/:id/game_over' => 'players#game_over'
  resources :players
end
