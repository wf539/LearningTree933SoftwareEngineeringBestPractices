namespace FlashCards

import System
import System.IO

class GameController:
"""Description of HandleIconClicked"""

	currentFlashCard as FlashCard
	answer as string
	score as int
	
	callable FlashCardChangedEvent(sender as object, args as FlashCard)
	event FlashCardChanged as FlashCardChangedEvent

	callable AnswerChangedEvent(sender as object, args as string)
	event AnswerChanged as AnswerChangedEvent
	
	
	def constructor():
		score = 0
		answer = ""
		
	def HandleKeyStroke(keyValue as int):
		
	// Not accepting more keystrokes.  At this point the 
	// they've typed the number of characters in the answer so 
	// it is either right or wrong
		if answer.Length == currentFlashCard.CorrectAnswer().Length:
			return 
		
		// 8 is the backspace key 
		if keyValue == 8:
			if answer.Length > 0:
				 SetAnswer(answer.Substring(0, answer.Length - 1))
		else:
			SetAnswer(answer += Convert.ToChar(keyValue))
			
		// If the student has typed the same number of characters as are in the answer then 
		// we should heck to see if the answer is correct.  Then raise the AnswerChecked event to
		// tell the display to update itself.
		if answer.Length == currentFlashCard.CorrectAnswer().Length:
			correct = currentFlashCard.CheckAnswer(answer)
			if correct:
				score += 10
			else:
				answer = ""
				
			FlashCardChanged(self, currentFlashCard)	
			
	def GetNewFlashCard(flashCardType as string):
		flashcard as FlashCard
		
		if flashCardType == "ADDITION":
			flashcard = AdditionFlashCard()
		elif flashCardType == "SUBTRACTION":
			flashcard = SubtractionFlashCard()
		elif flashCardType == "SPELLING":
			files = DirectoryInfo("C:\\Course933\\FlashCardsPictures").GetFiles("*.jpg")	
			whichFile = System.Random().Next(0,files.Length-1)
			selectedFile = files[whichFile]	
			flashcard = SpellingFlashCard(selectedFile)
		
		SetCurrentFlashCard(flashcard)
		SetAnswer("")
		
		
	def SetAnswer(newAnswer as String):
		answer = newAnswer
		
		
		// The answer has changed so the display needs update.  Raise the event to
		// tell the display to redraw itself.
		AnswerChanged(self, answer)
		
	def SetCurrentFlashCard(newFlashCard as FlashCard):
		
		currentFlashCard = newFlashCard
		
		// The FlashCard has changed so the display needs update.  Raise the event to
		// tell the display to redraw itself.
		FlashCardChanged(self, currentFlashCard)	
	

	def Speak():
		currentFlashCard.Speak()

		
	def Score() as int:
		return score

		
		
		
