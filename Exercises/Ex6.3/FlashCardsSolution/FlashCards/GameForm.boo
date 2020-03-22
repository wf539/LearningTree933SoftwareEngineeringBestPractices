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

		game.GetNewFlashCard("ADDITION")
		
	private def GameFormKeyDown(sender as object, e as System.Windows.Forms.KeyEventArgs):
		game.HandleKeyStroke(e.KeyValue)
		
	private def ListenPictureClick(sender as object, e as System.EventArgs):
		game.Speak()
		
	
	private def IconClick(sender as object, e as System.EventArgs):
		icon = sender as Control
		game.GetNewFlashCard(icon.Tag)
	
	private def IconMouseEnter(sender as object, e as System.EventArgs):
		Cursor = Cursors.Hand
		
	private def IconMouseLeave(sender as object, e as System.EventArgs):
		Cursor = Cursors.Default

	
		
[STAThread]
def Main(argv as (string)):
	Application.EnableVisualStyles()
	Application.SetCompatibleTextRenderingDefault(false)
	Application.Run(GameForm())

