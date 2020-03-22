namespace FlashCards

partial class GameForm(System.Windows.Forms.Form):
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
		resources as System.ComponentModel.ComponentResourceManager = System.ComponentModel.ComponentResourceManager(typeof(GameForm))
		self.pictureBox1 = System.Windows.Forms.PictureBox()
		self.AnswerLabel = System.Windows.Forms.Label()
		self.MessageLabel = System.Windows.Forms.Label()
		self.ScoreLabel = System.Windows.Forms.Label()
		self.NewCardLabel = System.Windows.Forms.Label()
		self.ListenPicture = System.Windows.Forms.PictureBox()
		cast(System.ComponentModel.ISupportInitialize,self.pictureBox1).BeginInit()
		cast(System.ComponentModel.ISupportInitialize,self.ListenPicture).BeginInit()
		self.SuspendLayout()
		# 
		# pictureBox1
		# 
		self.pictureBox1.Image = cast(System.Drawing.Image,resources.GetObject("pictureBox1.Image"))
		self.pictureBox1.Location = System.Drawing.Point(12, 55)
		self.pictureBox1.Name = "pictureBox1"
		self.pictureBox1.Size = System.Drawing.Size(439, 379)
		self.pictureBox1.SizeMode = System.Windows.Forms.PictureBoxSizeMode.Zoom
		self.pictureBox1.TabIndex = 0
		self.pictureBox1.TabStop = false
		# 
		# AnswerLabel
		# 
		self.AnswerLabel.Font = System.Drawing.Font("Comic Sans MS", 18, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, cast(System.Byte,0))
		self.AnswerLabel.Location = System.Drawing.Point(12, 437)
		self.AnswerLabel.Name = "AnswerLabel"
		self.AnswerLabel.Size = System.Drawing.Size(439, 61)
		self.AnswerLabel.TabIndex = 1
		self.AnswerLabel.TextAlign = System.Drawing.ContentAlignment.MiddleCenter
		# 
		# MessageLabel
		# 
		self.MessageLabel.Font = System.Drawing.Font("Comic Sans MS", 18, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, cast(System.Byte,0))
		self.MessageLabel.Location = System.Drawing.Point(12, 504)
		self.MessageLabel.Name = "MessageLabel"
		self.MessageLabel.Size = System.Drawing.Size(439, 61)
		self.MessageLabel.TabIndex = 3
		self.MessageLabel.Text = "Spell what is pictured"
		self.MessageLabel.TextAlign = System.Drawing.ContentAlignment.MiddleCenter
		# 
		# ScoreLabel
		# 
		self.ScoreLabel.Font = System.Drawing.Font("Comic Sans MS", 18, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, cast(System.Byte,0))
		self.ScoreLabel.Location = System.Drawing.Point(13, 13)
		self.ScoreLabel.Name = "ScoreLabel"
		self.ScoreLabel.Size = System.Drawing.Size(438, 39)
		self.ScoreLabel.TabIndex = 4
		self.ScoreLabel.Text = "Score: 0"
		# 
		# NewCardLabel
		# 
		self.NewCardLabel.Font = System.Drawing.Font("Comic Sans MS", 14, System.Drawing.FontStyle.Underline, System.Drawing.GraphicsUnit.Point, cast(System.Byte,0))
		self.NewCardLabel.ForeColor = System.Drawing.SystemColors.ActiveCaption
		self.NewCardLabel.Location = System.Drawing.Point(13, 565)
		self.NewCardLabel.Name = "NewCardLabel"
		self.NewCardLabel.Size = System.Drawing.Size(438, 36)
		self.NewCardLabel.TabIndex = 6
		self.NewCardLabel.Text = "New Card"
		self.NewCardLabel.TextAlign = System.Drawing.ContentAlignment.MiddleCenter
		# 
		# ListenPicture
		# 
		self.ListenPicture.Image = cast(System.Drawing.Image,resources.GetObject("ListenPicture.Image"))
		self.ListenPicture.Location = System.Drawing.Point(395, 565)
		self.ListenPicture.Name = "ListenPicture"
		self.ListenPicture.Size = System.Drawing.Size(56, 50)
		self.ListenPicture.SizeMode = System.Windows.Forms.PictureBoxSizeMode.Zoom
		self.ListenPicture.TabIndex = 7
		self.ListenPicture.TabStop = false
		# 
		# GameForm
		# 
		self.AutoScaleDimensions = System.Drawing.SizeF(6, 13)
		self.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
		self.ClientSize = System.Drawing.Size(463, 628)
		self.Controls.Add(self.ListenPicture)
		self.Controls.Add(self.NewCardLabel)
		self.Controls.Add(self.ScoreLabel)
		self.Controls.Add(self.MessageLabel)
		self.Controls.Add(self.AnswerLabel)
		self.Controls.Add(self.pictureBox1)
		self.FormBorderStyle = System.Windows.Forms.FormBorderStyle.Fixed3D
		self.MaximizeBox = false
		self.MinimizeBox = false
		self.Name = "GameForm"
		self.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen
		self.Text = "Flash Cards"
		self.TopMost = true
		cast(System.ComponentModel.ISupportInitialize,self.pictureBox1).EndInit()
		cast(System.ComponentModel.ISupportInitialize,self.ListenPicture).EndInit()
		self.ResumeLayout(false)
	private AnswerLabel as System.Windows.Forms.Label
	private NewCardLabel as System.Windows.Forms.Label
	private ListenPicture as System.Windows.Forms.PictureBox
	private ScoreLabel as System.Windows.Forms.Label
	private MessageLabel as System.Windows.Forms.Label
	private pictureBox1 as System.Windows.Forms.PictureBox
	

