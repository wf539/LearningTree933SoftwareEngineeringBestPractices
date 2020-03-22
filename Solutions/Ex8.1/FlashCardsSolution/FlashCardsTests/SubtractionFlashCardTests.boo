namespace FlashCardsTests

import System
import FlashCards
import NUnit.Framework

[TestFixture]
class SubtractionFlashCardTests:

	[Test] def CreationTest():
		obj = SubtractionFlashCard()
		
		assert obj != null
		
	[Test]def RandomNumbersTest():
		obj = SubtractionFlashCard()
		
		assert obj.Number1() >= 1 and obj.Number1() <= 99
		assert obj.Number2() >= 1 and obj.Number2() <= 99
		
	[Test] def CorrectanswerTest():
		obj = SubtractionFlashCard()
		res = (obj.Number1() - obj.Number2()).ToString()
		
		assert obj.CorrectAnswer() == res
