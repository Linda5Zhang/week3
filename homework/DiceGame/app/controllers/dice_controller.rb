class DiceController <ApplicationController

	def index
		
	end

	def roll
		@dicefirst = [1,2,3,4,5,6]
		@dicesecond = [1,2,3,4,5,6]

		@dice_one = @dicefirst.sample
		@dice_two = @dicesecond.sample

		@sum = @dice_one + @dice_two

		case [@sum]
			when [7],[11]
				@result = "YOU WIN!"
				@alert = ""
				@button = "Start Over"
			when [2],[3],[12]
				@result = "YOU LOSE!"
				@alert = ""
				@button = "Play Again"	
			else
				@point = @sum
				@result = "You point is now #{@point}."
				@alert = "Now try to get #{@point} again before you roll a 7."
				@button = "Roll the dice"
		end

	end

	def compare
		@dicefirst = [1,2,3,4,5,6]
		@dicesecond = [1,2,3,4,5,6]

		@dice_one = @dicefirst.sample
		@dice_two = @dicesecond.sample

		@sum = @dice_one + @dice_two
		@point = params[:point]

		case [@sum]
			when [7]
				@result = "YOU LOSE!"
				@alert = ""
				@button = "Play Again"	
				render 'roll'

			when [@point.to_i]
				@result = "YOU WIN!"
				@alert = ""
				@button = "Start Over"
				render 'roll'

			else 
				@result = "You point is now #{@point}."
				@alert = "You can roll again."
				@button = "Roll Again"
				render 'roll'
		end
	end

end