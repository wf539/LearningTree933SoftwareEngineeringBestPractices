namespace FlashCards

partial class LoginForm(System.Windows.Forms.Form):
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
		self.label1 = System.Windows.Forms.Label()
		self.StudentsListBox = System.Windows.Forms.ListBox()
		self.label2 = System.Windows.Forms.Label()
		self.TeachersListBox = System.Windows.Forms.ComboBox()
		self.OKButton = System.Windows.Forms.Button()
		self.SuspendLayout()
		# 
		# label1
		# 
		self.label1.Location = System.Drawing.Point(12, 69)
		self.label1.Name = "label1"
		self.label1.Size = System.Drawing.Size(142, 23)
		self.label1.TabIndex = 2
		self.label1.Text = "Choose your name:"
		# 
		# StudentsListBox
		# 
		self.StudentsListBox.FormattingEnabled = true
		self.StudentsListBox.Location = System.Drawing.Point(13, 95)
		self.StudentsListBox.Name = "StudentsListBox"
		self.StudentsListBox.Size = System.Drawing.Size(176, 160)
		self.StudentsListBox.TabIndex = 6
		# 
		# label2
		# 
		self.label2.Location = System.Drawing.Point(13, 13)
		self.label2.Name = "label2"
		self.label2.Size = System.Drawing.Size(123, 23)
		self.label2.TabIndex = 7
		self.label2.Text = "Choose you teacher:"
		# 
		# TeachersListBox
		# 
		self.TeachersListBox.FormattingEnabled = true
		self.TeachersListBox.Location = System.Drawing.Point(15, 39)
		self.TeachersListBox.Name = "TeachersListBox"
		self.TeachersListBox.Size = System.Drawing.Size(121, 21)
		self.TeachersListBox.TabIndex = 8
		self.TeachersListBox.SelectedIndexChanged += self.TeachersListBoxSelectedIndexChanged as System.EventHandler
		# 
		# OKButton
		# 
		self.OKButton.Location = System.Drawing.Point(113, 278)
		self.OKButton.Name = "OKButton"
		self.OKButton.Size = System.Drawing.Size(75, 23)
		self.OKButton.TabIndex = 9
		self.OKButton.Text = "OK"
		self.OKButton.UseVisualStyleBackColor = true
		self.OKButton.Click += self.OKButtonClick as System.EventHandler
		# 
		# LoginForm
		# 
		self.AcceptButton = self.OKButton
		self.AutoScaleDimensions = System.Drawing.SizeF(6, 13)
		self.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
		self.ClientSize = System.Drawing.Size(217, 322)
		self.ControlBox = false
		self.Controls.Add(self.OKButton)
		self.Controls.Add(self.TeachersListBox)
		self.Controls.Add(self.label2)
		self.Controls.Add(self.StudentsListBox)
		self.Controls.Add(self.label1)
		self.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedDialog
		self.MaximizeBox = false
		self.MinimizeBox = false
		self.Name = "LoginForm"
		self.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen
		self.Text = "Login"
		self.Load += self.LoginFormLoad as System.EventHandler
		self.ResumeLayout(false)
	private OKButton as System.Windows.Forms.Button
	private TeachersListBox as System.Windows.Forms.ComboBox
	private label2 as System.Windows.Forms.Label
	private StudentsListBox as System.Windows.Forms.ListBox
	private label1 as System.Windows.Forms.Label

