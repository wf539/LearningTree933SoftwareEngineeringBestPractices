namespace FlashCards

import System
import System.Drawing

class FlashCard:
"""Description of FlashCard"""

	message as string

	def constructor():
		pass
	
	def Message() as string:
		return message
		
	def CheckAnswer(answer as string) as bool:
		if answer == CorrectAnswer():
			message = "Correct"
			return true
		else:
			message = "Incorrect"
			return false
		
	def CorrectAnswer() as string:
		pass

	def Picture() as Bitmap:
		pass
		
	def Speak():
		pass


