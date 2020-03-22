namespace FlashCards

import System
import System.Collections
import System.Drawing
import System.Windows.Forms
import System.IO

partial class GameForm:
	
	wordToSpell as string
	score as int
	
	
	def constructor():
		// The InitializeComponent() call is required for Windows Forms designer support.
		InitializeComponent()
	
	private def MainFormLoad(sender as object, e as System.EventArgs):
		GetNewPicture()
	
	private def MainFormKeyDown(sender as object, e as System.Windows.Forms.KeyEventArgs):
		//The 8 is the backspace key.  If they press it, take the last character from the string
		if e.KeyValue == 8:
			if AnswerLabel.Text.Length > 0:
				AnswerLabel.Text = AnswerLabel.Text.Substring(0, AnswerLabel.Text.Length - 1)
			return
		
		//Once the student has enter the same number of characters
		//as are in the answer, stop accepting characters
		if AnswerLabel.Text.Length == wordToSpell.Length:
			return 
				
		//Add the character thay typed to the answer
		AnswerLabel.Text += Convert.ToChar(e.KeyValue)	
			
		//If the number of characters type equals the number in the answer
		// then check the answer
		if AnswerLabel.Text.Length == wordToSpell.Length:
			correct as bool
			correct = CheckSpelling(AnswerLabel.Text)
			if correct == true:
				MessageLabel.Text = "Correct, for 10 points!"
				score += 10
				ScoreLabel.Text = "Score: " + score.ToString()	
			else:
				MessageLabel.Text = "Try again."
				AnswerLabel.Text = ""
			
			return
					
		
	private def CheckSpelling(answer as string) as bool:
		if wordToSpell.ToUpper() == answer.ToUpper():
			return true
		else:
			return false
			
			
	private def GetNewPicture():
		files = DirectoryInfo("C:\\Course933\\FlashCardsPictures").GetFiles("*.jpg")
		
		numFiles = files.Length
		whichFile = System.Random().Next(0,numFiles-1)
		selectedFile = files[whichFile]
		
		wordToSpell = selectedFile.Name.Substring(0, selectedFile.Name.Length - 4)
		self.pictureBox1.Image = Bitmap(selectedFile.FullName)
		AnswerLabel.Text = ""
		MessageLabel.Text = "Spell what is pctured"
		
	
	private def NewCardLabelClick(sender as object, e as System.EventArgs):
		GetNewPicture()
	
	private def ListenPictureClick(sender as object, e as System.EventArgs):
		System.Speech.Synthesis.SpeechSynthesizer().Speak(wordToSpell)

	

		
[STAThread]
def Main(argv as (string)):
	Application.EnableVisualStyles()
	Application.SetCompatibleTextRenderingDefault(false)
	Application.Run(GameForm())

