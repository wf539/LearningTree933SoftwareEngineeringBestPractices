namespace FlashCards

import System
import System.IO

class GameController:
"""Description of HandleIconClicked"""

	answer as string
	score as int
	
	callable AnswerChangedEvent(sender as object, args as string)
	event AnswerChanged as AnswerChangedEvent
	
	def constructor():
		score = 0
		answer = ""
		
	def HandleKeyStroke(keyValue as int):
		// 8 is the backspace key 
		if keyValue == 8:
			if answer.Length > 0:
				 SetAnswer(answer.Substring(0, answer.Length - 1))
		else:
			SetAnswer(answer += Convert.ToChar(keyValue))
					
	def GetNewFlashCard(flashCardType as string):
		SetAnswer("")
	
	def SetAnswer(newAnswer as String):
		answer = newAnswer
		
		// The answer has changed so the display needs update.  Raise the event to
		// tell the display to redraw itself.
		AnswerChanged(self, answer)
		
	def Speak():
		synth = System.Speech.Synthesis.SpeechSynthesizer()
		synth.Speak("Hello")

		
	def Score() as int:
		return score

		
		
		
