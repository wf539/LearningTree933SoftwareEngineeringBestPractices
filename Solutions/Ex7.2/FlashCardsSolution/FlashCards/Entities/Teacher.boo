namespace FlashCards

import System

class Teacher:
"""Description of Teacher"""

	id as Guid
	name as string
	
	def constructor():
		pass
		
	def constructor(id as Guid, name as string):
		self.id = id
		self.name = name
		
	def ID() as Guid:
		return id
		
	def SetID(value as Guid):
		id = value
		
	def Name() as string:
		return name
		
	def SetName(value as string):
		name = value
			
	def ToString():
		return name

