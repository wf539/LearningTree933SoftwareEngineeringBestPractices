namespace FlashCards

import System
import System.Collections
import System.Drawing
import System.Windows.Forms
import System.IO

partial class GameForm:
	
	game as GameController
	
	def constructor():
		// The InitializeComponent() call is required for Windows Forms designer support.
		InitializeComponent()
		
		
	private def GameFormLoad(sender as object, e as System.EventArgs):
		game = GameController()
		
		//Here the event handlers are being told to listem for the events raised by the controller
		game.AnswerChanged += game_AnswerChanged
		game.FlashCardChanged += game_FlashCardChanged		
		
		game.GetNewFlashCard("ADDITION")
		
		GreetTheStudent()
		
	private def GameFormKeyDown(sender as object, e as System.Windows.Forms.KeyEventArgs):
		game.HandleKeyStroke(e.KeyValue)
		
	private def ListenPictureClick(sender as object, e as System.EventArgs):
		game.Speak()
		
	private def game_AnswerChanged(sender as object, args as string):
		AnswerLabel.Text = args
		
	private def game_FlashCardChanged(sender as object, args as FlashCard):
		FlashCardPictureBox.Image = args.Picture()
		MessageLabel.Text = args.Message()
		ScoreLabel.Text = "Score: " + game.Score().ToString()
		
	
	private def IconClick(sender as object, e as System.EventArgs):
		icon = sender as Control
		game.GetNewFlashCard(icon.Tag)
	
	private def IconMouseEnter(sender as object, e as System.EventArgs):
		Cursor = Cursors.Hand
		
	private def IconMouseLeave(sender as object, e as System.EventArgs):
		Cursor = Cursors.Default
		
	private def GreetTheStudent():
		//Need to ask the student who they are and greet them
		login = LoginForm()
		login.ShowDialog()	
		game.SetStudent(login.SelectedStudent())
		MessageBox.Show("Hello " + game.Student().Name() + " your lifetime score is " + game.Student().LifeTimeScore())
		
			
	private def PropertiesToolStripMenuItemClick(sender as object, e as System.EventArgs):
		PropertiesForm().ShowDialog()
	
	private def GameFormFormClosing(sender as object, e as System.Windows.Forms.FormClosingEventArgs):
		game.SaveCurrentScore()
	
	private def ExitToolStripMenuItemClick(sender as object, e as System.EventArgs):
		self.Close()
		

		
[STAThread]
def Main(argv as (string)):
	Application.EnableVisualStyles()
	Application.SetCompatibleTextRenderingDefault(false)
	Application.Run(GameForm())

