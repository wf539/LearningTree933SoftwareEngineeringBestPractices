namespace FlashCards

import System
import System.Drawing

class AdditionFlashCard(MathFlashCard):

	def constructor():
		super.message = "Add the numbers"
		
	def CorrectAnswer() as string:
		return (super.number1 + super.number2).ToString()
		
			
	def Equation() as string:
		return number1.ToString() + " + " + number2.ToString()

	def Speak():
		synth = System.Speech.Synthesis.SpeechSynthesizer()
		synth.Speak("Add " + number1.ToString() + " plus " + number2.ToString())

