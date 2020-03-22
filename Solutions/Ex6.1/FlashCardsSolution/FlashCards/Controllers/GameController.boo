namespace FlashCards

import System
import System.IO

class GameController:

	answer as string
	score as int
	
	def constructor():
		answer = ""
		score = 0
		
	def HandleKeyStroke(keyValue as int):
		// 8 is the backspace key 
		if keyValue == 8:
			if answer.Length > 0:
				 SetAnswer(answer.Substring(0, answer.Length - 1))
		else:
			SetAnswer(answer += Convert.ToChar(keyValue))
			
	
	def GetNewFlashCard(flashCardType as string):
		SetAnswer("")
		
	def Speak():
		synth = System.Speech.Synthesis.SpeechSynthesizer()
		synth.Speak("Hello")
		
		
	def SetAnswer(newAnswer as String):
		answer = newAnswer

	def Score() as int:
		return score

		
		
		
