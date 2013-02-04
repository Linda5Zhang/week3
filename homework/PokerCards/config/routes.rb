PokerCards::Application.routes.draw do
  
  get "/poker" => 'poker#index', :as => 'poker'
  
end
