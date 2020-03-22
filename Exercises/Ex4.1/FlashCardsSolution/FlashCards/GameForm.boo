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
	
	
		
[STAThread]
def Main(argv as (string)):
	Application.EnableVisualStyles()
	Application.SetCompatibleTextRenderingDefault(false)
	Application.Run(GameForm())

