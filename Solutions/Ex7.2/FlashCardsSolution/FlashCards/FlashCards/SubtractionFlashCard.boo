namespace FlashCards

import System
import System.Drawing

class SubtractionFlashCard(MathFlashCard):
"""Description of AdditionFlashCard"""


	def constructor():
		super.message = "Subtract the numbers."

	def CorrectAnswer() as string:
		return (super.number1 - super.number2).ToString()
				
	def Equation() as string:
		return number1.ToString() + " - " + number2.ToString()
		
	def Speak():
		synth = System.Speech.Synthesis.SpeechSynthesizer()
		synth.Speak("Subtract " + number1.ToString() + " minus " + number2.ToString())
