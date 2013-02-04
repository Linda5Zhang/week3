class RpsController <ApplicationController

	def index
		@chooses = ["rock","paper","scissors"]
		
	end

	def result
		@computer = ["rock","paper","scissors"].sample
		@player = params[:choose]

		case [@player, @computer]
			when ["rock", "scissors"],["scissors", "paper"],["paper", "rock"]
				@result = "PLAYER WIN!"
			when ["scissors", "rock"],["paper", "scissors"],["rock", "paper"]
				@result = "COMPUTER WIN!"
		else
			@result = "IT'S A TIE!"

		end	

	end
	
	
end
