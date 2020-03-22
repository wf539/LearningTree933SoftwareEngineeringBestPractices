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
		
	private def GameFormKeyDown(sender as object, e as System.Windows.Forms.KeyEventArgs):
		pass
		
	private def ListenPictureClick(sender as object, e as System.EventArgs):
		pass
		
	
	private def IconClick(sender as object, e as System.EventArgs):
		pass
	

	
		
[STAThread]
def Main(argv as (string)):
	Application.EnableVisualStyles()
	Application.SetCompatibleTextRenderingDefault(false)
	Application.Run(GameForm())

