namespace FlashCards

import System
import System.Drawing

abstract class MathFlashCard(FlashCard):

	number1 as int
	number2 as int
	
	def constructor():
		GenerateNumbers()
		

	private def GenerateNumbers():
		rand = Random()
		
		number1 = rand.Next(1, 99)
		number2 = rand.Next(1, 99)
		
		
	def Picture() as Bitmap:
		pic = Bitmap(450, 400, Imaging.PixelFormat.Format24bppRgb)
		
		graphic = Graphics.FromImage(pic)
		font = Font("Comic Sans", 76, FontStyle.Regular)
		
		graphic.FillRectangle(Brushes.Silver, 0,0,450,400)
		graphic.DrawString(self.Equation(), font, Brushes.Black, 40, 125)
		
		return pic		
		
		
	abstract def CorrectAnswer() as string:
		pass
				
	abstract def Equation() as string:
		pass




