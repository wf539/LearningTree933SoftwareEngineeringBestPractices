namespace FlashCardsTests

import System
import FlashCards
import NUnit.Framework

[TestFixture]
class AdditionFlashCardTests:

	[Test] 
	def CreationTest():
		obj = AdditionFlashCard()
		
		assert obj != null
		
	[Test]
	def RandomNumbersTest():
		obj = AdditionFlashCard()
		
		assert obj.Number1() >= 1 and obj.Number1() <= 99
		assert obj.Number2() >= 1 and obj.Number2() <= 99
		
	[Test] 
	def CorrectAnswerTest():
		obj = AdditionFlashCard()
		res = (obj.Number1() + obj.Number2()).ToString()
		
		assert obj.CorrectAnswer() == res
