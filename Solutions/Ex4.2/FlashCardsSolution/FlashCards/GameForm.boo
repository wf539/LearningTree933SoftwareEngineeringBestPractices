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
	
	private def GameFormLoad(sender as object, e as System.EventArgs):
		GetNewPicture()
	
	private def NewCardLabelClick(sender as object, e as System.EventArgs):
		GetNewPicture()
	
	private def ListenPictureClick(sender as object, e as System.EventArgs):
		System.Speech.Synthesis.SpeechSynthesizer().Speak(wordToSpell)
		
	private def GameFormKeyDown(sender as object, e as System.Windows.Forms.KeyEventArgs):
		AnswerLabel.Text += Convert.ToChar(e.KeyValue)	
		
	private def GetNewPicture():
		files = DirectoryInfo("C:\\Course933\\FlashCardsPictures").GetFiles("*.jpg")
		
		numFiles = files.Length
		whichFile = System.Random().Next(0,numFiles-1)
		selectedFile = files[whichFile]
		
		wordToSpell = selectedFile.Name.Substring(0, selectedFile.Name.Length - 4)
		self.pictureBox1.Image = Bitmap(selectedFile.FullName)
		AnswerLabel.Text = ""
		MessageLabel.Text = "Spell what is pctured"
		

		
[STAThread]
def Main(argv as (string)):
	Application.EnableVisualStyles()
	Application.SetCompatibleTextRenderingDefault(false)
	Application.Run(GameForm())

