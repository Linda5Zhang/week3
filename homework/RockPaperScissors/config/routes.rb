RockPaperScissors::Application.routes.draw do
  
  get "/rps" => 'rps#index', :as => 'rps'

  get "/rps/choose=:choose" => 'rps#result', :as => 'choice'
  
end
