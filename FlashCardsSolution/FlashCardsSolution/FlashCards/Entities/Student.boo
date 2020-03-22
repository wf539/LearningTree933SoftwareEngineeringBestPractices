namespace FlashCards

import System

class Student:
"""Description of Student"""
	id as Guid
	name as string
	scores as List
	
	def constructor():
		pass
		
	def constructor(id as Guid, name as string):
		self.id = id
		self.name = name
		self.scores = List()
		
		
	def ID() as Guid:
		return id
		
	def SetID(value as Guid):
		id = value
		
	def Name() as string:
		return name
		
	def SetName(value as string):
		name = value
			
	def Scores() as List:
		return scores
		
	def SetScores(value as List):
		scores = value
		
	def AddScore(newScore as Score):
		self.scores.Add(newScore)	
		
	def LifeTimeScore() as int:
		total as int
			
		for s as Score in scores:
			total += s.Score()
		
		return total
		
			
	def ToString():
		return name
