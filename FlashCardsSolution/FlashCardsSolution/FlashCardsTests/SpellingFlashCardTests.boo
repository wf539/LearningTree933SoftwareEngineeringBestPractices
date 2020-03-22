namespace FlashCardsTests

import System
import FlashCards
import NUnit.Framework

[TestFixture]class SpellingFlashCardTests:

	[Test] def CreationTest():
		obj = SpellingFlashCard(IO.FileInfo("C:\\Course933\\FlashCardsPictures\\Bear.jpg"))
		assert obj != null
		
	[Test] def MessageTest():
		obj = SpellingFlashCard(IO.FileInfo("C:\\Course933\\FlashCardsPictures\\Bear.jpg"))
		assert obj.Message() == "Spell what is pictured."
		
	[Test] def CorrectanswerTest():
		obj = SpellingFlashCard(IO.FileInfo("C:\\Course933\\FlashCardsPictures\\Bear.jpg"))
		
		assert obj.CorrectAnswer() == "BEAR"
		
		
		

