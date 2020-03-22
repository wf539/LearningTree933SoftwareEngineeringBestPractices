namespace FlashCards

import System
import System.Collections
import System.Drawing
import System.Windows.Forms
import System.Data

partial class PropertiesForm:
"""Description of PropertiesForm."""

	selectedTeacher as Teacher
	
	def constructor():
		// The InitializeComponent() call is required for Windows Forms designer support.
		InitializeComponent()
	
	private def PropertiesFormLoad(sender as object, e as System.EventArgs):
		RefillTeachersListBox()
	
	
	private def RefillTeachersListBox():
		TeachersListBox.DataSource = TeachersAdapter().GetAllTeachers()

	private def TeachersListBoxSelectedIndexChanged(sender as object, e as System.EventArgs):
		selectedTeacher = TeachersListBox.SelectedItem
		RefillStudentsListBox()		
		
	private def RefillStudentsListBox():
		StudentsListBox.DataSource = StudentsAdapter().GetStudentsForTeacher(selectedTeacher)	
		
	private def AddTeacherButtonClick(sender as object, e as System.EventArgs):
		if string.IsNullOrEmpty(TeacherTextBox.Text):
			return
		
		if TeachersAdapter().AddTeacher(TeacherTextBox.Text) == 1:
			RefillTeachersListBox()
			TeacherTextBox.Text = ""
		else:
			MessageBox.Show("The insert failed.")
	

	private def AddStudentButtonClick(sender as object, e as System.EventArgs):
		if string.IsNullOrEmpty(StudentTextBox.Text):
			return
		
		if StudentsAdapter().AddStudent(selectedTeacher, StudentTextBox.Text) == 1:
			RefillStudentsListBox()
			StudentTextBox.Text = ""
		else:
			MessageBox.Show("The insert failed.")
	
	private def RemoveTeacherButtonClick(sender as object, e as System.EventArgs):
		if TeachersListBox.SelectedIndex > -1:
			TeachersAdapter().DeleteTeacher(TeachersListBox.SelectedItem)
			RefillTeachersListBox()
	
	private def RemoveStudentButtonClick(sender as object, e as System.EventArgs):
		if StudentsListBox.SelectedIndex > -1:
			StudentsAdapter().DeleteStudent(StudentsListBox.SelectedItem)
			RefillStudentsListBox()
			
	

	
			
			
		

