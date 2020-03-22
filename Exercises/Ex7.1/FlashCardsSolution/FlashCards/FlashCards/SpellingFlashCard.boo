namespace FlashCards

import System
import System.Drawing
import System.IO

class SpellingFlashCard(FlashCard):
"""Description of SpellingFlashCard"""

	picture as Bitmap
	correctAnswer as string
	
	def constructor(pictureFile as FileInfo):
		picture = Bitmap(pictureFile.FullName)
		correctAnswer = pictureFile.Name.Substring(0, pictureFile.Name.Length - 4).ToUpper()
		super.message = "Spell what is pictured."

	def CorrectAnswer() as string:
		return correctAnswer
		
	def Picture():
		return picture
		
	def Speak():
		synth = System.Speech.Synthesis.SpeechSynthesizer()
		synth.Speak("spell " + correctAnswer)
		
