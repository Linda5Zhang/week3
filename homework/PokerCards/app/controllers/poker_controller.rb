class PokerController <ApplicationController

	def index
		@pokers = [ 'Heart A','Heart 2','Heart 3','Heart 4','Heart 5',
					'Heart 6','Heart 7','Heart 8','Heart 9','Heart 10',
					'Heart J','Heart Q','Heart K',
					'Spade A','Spade 2','Spade 3','Spade 4','Spade 5',
					'Spade 6','Spade 7','Spade 8','Spade 9','Spade 10',
					'Spade J','Spade Q','Spade K',
					'Club A','Club 2','Club 3','Club 4','Club 5',
					'Club 6','Club 7','Club 8','Club 9','Club 10',
					'Club J','Club Q','Club K',
					'Diamond A','Diamond 2','Diamond 3','Diamond 4','Diamond 5',
					'Diamond 6','Diamond 7','Diamond 8','Diamond 9','Diamond 10',
					'Diamond J','Diamond Q','Diamond K'
				  ]

		@fivepokers = @pokers.sample(5)



	end

end