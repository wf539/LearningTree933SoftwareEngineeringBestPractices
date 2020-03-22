namespace FlashCards

import System
import System.Collections
import System.Drawing
import System.Windows.Forms

partial class LoginForm:
"""Description of LoginForm."""
	def constructor():
		// The InitializeComponent() call is required for Windows Forms designer support.
		InitializeComponent()
	
	private def LoginFormLoad(sender as object, e as System.EventArgs):
		RefillTeachersListBox()

	private def RefillTeachersListBox():
		TeachersListBox.DataSource = TeachersAdapter().GetAllTeachers()


	private def TeachersListBoxSelectedIndexChanged(sender as object, e as System.EventArgs):
		RefillStudentsListBox()	
		
		
	private def RefillStudentsListBox():
		StudentsListBox.DataSource = StudentsAdapter().GetStudentsForTeacher(TeachersListBox.SelectedItem)
	
	private def OKButtonClick(sender as object, e as System.EventArgs):
		if StudentsListBox.SelectedItem != null:
			self.DialogResult = DialogResult.OK
		
	def SelectedStudent() as Student:
		return StudentsListBox.SelectedItem
		

