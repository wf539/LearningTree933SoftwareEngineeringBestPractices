namespace FlashCards

import System
import System.Collections
import System.Drawing
import System.Windows.Forms
import System.IO

partial class GameForm:
	
	
	def constructor():
		// The InitializeComponent() call is required for Windows Forms designer support.
		InitializeComponent()
	
	private def GameFormLoad(sender as object, e as System.EventArgs):
		pass
	
	private def NewCardLabelClick(sender as object, e as System.EventArgs):
		MessageBox.Show("We'll have to get a new picture here.")
		
	private def ListenPictureClick(sender as object, e as System.EventArgs):
		MessageBox.Show("We'll have to tell them what to spell here.")
		
	private def GameFormKeyDown(sender as object, e as System.Windows.Forms.KeyEventArgs):
		AnswerLabel.Text += Convert.ToChar(e.KeyValue)	
					
	
		
[STAThread]
def Main(argv as (string)):
	Application.EnableVisualStyles()
	Application.SetCompatibleTextRenderingDefault(false)
	Application.Run(GameForm())

