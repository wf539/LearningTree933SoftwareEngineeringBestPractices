namespace FlashCards

import System

class Score:
"""Description of Score"""

	id as Guid
	gameDate as date
	score as int
	
	def constructor():
		pass
		
	def constructor(id as Guid, gameDate as date, score as int):
		self.id = id
		self.gameDate = gameDate
		self.score = score
	
	def ID() as Guid:
		return id
			
	def GameDate() as date:
		return gameDate
		
			
	def Score() as int:
		return score

