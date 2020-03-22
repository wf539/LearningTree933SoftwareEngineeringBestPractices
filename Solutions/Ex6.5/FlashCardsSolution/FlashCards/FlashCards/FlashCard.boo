namespace FlashCards

import System
import System.Drawing

abstract class FlashCard:
"""Description of FlashCard"""

	message as string
	
	def Message() as string:
		return message
		
	def CheckAnswer(answer as string) as bool:
		if answer == CorrectAnswer():
			message = "Correct"
			return true
		else:
			message = "Incorrect"
			return false
		
	abstract def CorrectAnswer() as string:
		pass

		
	abstract def Picture() as Bitmap:
		pass
		

	
	abstract def Speak():
		pass
		
	
	def constructor():
		pass

