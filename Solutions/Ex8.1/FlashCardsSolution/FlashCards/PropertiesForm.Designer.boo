namespace FlashCards

partial class PropertiesForm(System.Windows.Forms.Form):
	private components as System.ComponentModel.IContainer = null
	
	protected override def Dispose(disposing as bool):
		if disposing:
			if components is not null:
				components.Dispose()
		super(disposing)
	
	// This method is required for Windows Forms designer support.
	// Do not change the method contents inside the source code editor. The Forms designer might
	// not be able to load this method if it was changed manually.
	def InitializeComponent():
		self.AddStudentButton = System.Windows.Forms.Button()
		self.StudentTextBox = System.Windows.Forms.TextBox()
		self.StudentsListBox = System.Windows.Forms.ListBox()
		self.TeachersListBox = System.Windows.Forms.ListBox()
		self.TeacherTextBox = System.Windows.Forms.TextBox()
		self.AddTeacherButton = System.Windows.Forms.Button()
		self.RemoveTeacherButton = System.Windows.Forms.Button()
		self.RemoveStudentButton = System.Windows.Forms.Button()
		self.SuspendLayout()
		# 
		# AddStudentButton
		# 
		self.AddStudentButton.Location = System.Drawing.Point(195, 176)
		self.AddStudentButton.Name = "AddStudentButton"
		self.AddStudentButton.Size = System.Drawing.Size(109, 23)
		self.AddStudentButton.TabIndex = 13
		self.AddStudentButton.Text = "Add Student"
		self.AddStudentButton.UseVisualStyleBackColor = true
		self.AddStudentButton.Click += self.AddStudentButtonClick as System.EventHandler
		# 
		# StudentTextBox
		# 
		self.StudentTextBox.Location = System.Drawing.Point(194, 149)
		self.StudentTextBox.Name = "StudentTextBox"
		self.StudentTextBox.Size = System.Drawing.Size(176, 20)
		self.StudentTextBox.TabIndex = 12
		# 
		# StudentsListBox
		# 
		self.StudentsListBox.FormattingEnabled = true
		self.StudentsListBox.Location = System.Drawing.Point(12, 149)
		self.StudentsListBox.Name = "StudentsListBox"
		self.StudentsListBox.Size = System.Drawing.Size(176, 212)
		self.StudentsListBox.TabIndex = 11
		# 
		# TeachersListBox
		# 
		self.TeachersListBox.FormattingEnabled = true
		self.TeachersListBox.Location = System.Drawing.Point(12, 12)
		self.TeachersListBox.Name = "TeachersListBox"
		self.TeachersListBox.Size = System.Drawing.Size(176, 121)
		self.TeachersListBox.TabIndex = 10
		self.TeachersListBox.SelectedIndexChanged += self.TeachersListBoxSelectedIndexChanged as System.EventHandler
		# 
		# TeacherTextBox
		# 
		self.TeacherTextBox.Location = System.Drawing.Point(194, 13)
		self.TeacherTextBox.Name = "TeacherTextBox"
		self.TeacherTextBox.Size = System.Drawing.Size(176, 20)
		self.TeacherTextBox.TabIndex = 9
		# 
		# AddTeacherButton
		# 
		self.AddTeacherButton.Location = System.Drawing.Point(194, 39)
		self.AddTeacherButton.Name = "AddTeacherButton"
		self.AddTeacherButton.Size = System.Drawing.Size(110, 23)
		self.AddTeacherButton.TabIndex = 8
		self.AddTeacherButton.Text = "Add Teacher"
		self.AddTeacherButton.UseVisualStyleBackColor = true
		self.AddTeacherButton.Click += self.AddTeacherButtonClick as System.EventHandler
		# 
		# RemoveTeacherButton
		# 
		self.RemoveTeacherButton.Location = System.Drawing.Point(195, 69)
		self.RemoveTeacherButton.Name = "RemoveTeacherButton"
		self.RemoveTeacherButton.Size = System.Drawing.Size(109, 23)
		self.RemoveTeacherButton.TabIndex = 14
		self.RemoveTeacherButton.Text = "Remove Teacher"
		self.RemoveTeacherButton.UseVisualStyleBackColor = true
		self.RemoveTeacherButton.Click += self.RemoveTeacherButtonClick as System.EventHandler
		# 
		# RemoveStudentButton
		# 
		self.RemoveStudentButton.Location = System.Drawing.Point(195, 205)
		self.RemoveStudentButton.Name = "RemoveStudentButton"
		self.RemoveStudentButton.Size = System.Drawing.Size(109, 23)
		self.RemoveStudentButton.TabIndex = 15
		self.RemoveStudentButton.Text = "Remove Student"
		self.RemoveStudentButton.UseVisualStyleBackColor = true
		self.RemoveStudentButton.Click += self.RemoveStudentButtonClick as System.EventHandler
		# 
		# PropertiesForm
		# 
		self.AutoScaleDimensions = System.Drawing.SizeF(6, 13)
		self.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
		self.ClientSize = System.Drawing.Size(404, 399)
		self.Controls.Add(self.RemoveStudentButton)
		self.Controls.Add(self.RemoveTeacherButton)
		self.Controls.Add(self.AddStudentButton)
		self.Controls.Add(self.StudentTextBox)
		self.Controls.Add(self.StudentsListBox)
		self.Controls.Add(self.TeachersListBox)
		self.Controls.Add(self.TeacherTextBox)
		self.Controls.Add(self.AddTeacherButton)
		self.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedDialog
		self.MaximizeBox = false
		self.MinimizeBox = false
		self.Name = "PropertiesForm"
		self.StartPosition = System.Windows.Forms.FormStartPosition.CenterParent
		self.Text = "PropertiesForm"
		self.TopMost = true
		self.Load += self.PropertiesFormLoad as System.EventHandler
		self.ResumeLayout(false)
		self.PerformLayout()
	private RemoveStudentButton as System.Windows.Forms.Button
	private RemoveTeacherButton as System.Windows.Forms.Button
	private StudentsListBox as System.Windows.Forms.ListBox
	private StudentTextBox as System.Windows.Forms.TextBox
	private AddStudentButton as System.Windows.Forms.Button
	private TeachersListBox as System.Windows.Forms.ListBox
	private AddTeacherButton as System.Windows.Forms.Button
	private TeacherTextBox as System.Windows.Forms.TextBox

