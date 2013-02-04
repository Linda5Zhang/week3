DiceGame::Application.routes.draw do

	get "/dice/roll" => 'dice#roll', :as => 'roll'

	get "/dice/roll/point=:point" => 'dice#compare', :as => 'point'

  	

  	get "/dice" => 'dice#index', :as => 'dice'

end
