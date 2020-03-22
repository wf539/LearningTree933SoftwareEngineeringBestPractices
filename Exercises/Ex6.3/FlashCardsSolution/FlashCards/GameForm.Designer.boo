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
		self.FlashCardPictureBox = System.Windows.Forms.PictureBox()
		self.AnswerLabel = System.Windows.Forms.Label()
		self.MessageLabel = System.Windows.Forms.Label()
		self.ScoreLabel = System.Windows.Forms.Label()
		self.ListenPicture = System.Windows.Forms.PictureBox()
		self.AdditionIcon = System.Windows.Forms.PictureBox()
		self.SubtractionIcon = System.Windows.Forms.PictureBox()
		self.SpellingIcon = System.Windows.Forms.PictureBox()
		cast(System.ComponentModel.ISupportInitialize,self.FlashCardPictureBox).BeginInit()
		cast(System.ComponentModel.ISupportInitialize,self.ListenPicture).BeginInit()
		cast(System.ComponentModel.ISupportInitialize,self.AdditionIcon).BeginInit()
		cast(System.ComponentModel.ISupportInitialize,self.SubtractionIcon).BeginInit()
		cast(System.ComponentModel.ISupportInitialize,self.SpellingIcon).BeginInit()
		self.SuspendLayout()
		# 
		# FlashCardPictureBox
		# 
		self.FlashCardPictureBox.Image = cast(System.Drawing.Image,resources.GetObject("FlashCardPictureBox.Image"))
		self.FlashCardPictureBox.Location = System.Drawing.Point(12, 94)
		self.FlashCardPictureBox.Name = "FlashCardPictureBox"
		self.FlashCardPictureBox.Size = System.Drawing.Size(450, 315)
		self.FlashCardPictureBox.SizeMode = System.Windows.Forms.PictureBoxSizeMode.Zoom
		self.FlashCardPictureBox.TabIndex = 0
		self.FlashCardPictureBox.TabStop = false
		# 
		# AnswerLabel
		# 
		self.AnswerLabel.Font = System.Drawing.Font("Comic Sans MS", 18, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, cast(System.Byte,0))
		self.AnswerLabel.Location = System.Drawing.Point(13, 421)
		self.AnswerLabel.Name = "AnswerLabel"
		self.AnswerLabel.Size = System.Drawing.Size(449, 61)
		self.AnswerLabel.TabIndex = 1
		self.AnswerLabel.TextAlign = System.Drawing.ContentAlignment.MiddleCenter
		# 
		# MessageLabel
		# 
		self.MessageLabel.Font = System.Drawing.Font("Comic Sans MS", 18, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, cast(System.Byte,0))
		self.MessageLabel.Location = System.Drawing.Point(12, 482)
		self.MessageLabel.Name = "MessageLabel"
		self.MessageLabel.Size = System.Drawing.Size(450, 61)
		self.MessageLabel.TabIndex = 3
		self.MessageLabel.Text = "Spell what is pictured"
		self.MessageLabel.TextAlign = System.Drawing.ContentAlignment.MiddleCenter
		# 
		# ScoreLabel
		# 
		self.ScoreLabel.BackColor = System.Drawing.Color.Silver
		self.ScoreLabel.Font = System.Drawing.Font("Comic Sans MS", 18, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, cast(System.Byte,0))
		self.ScoreLabel.Location = System.Drawing.Point(13, 565)
		self.ScoreLabel.Name = "ScoreLabel"
		self.ScoreLabel.Size = System.Drawing.Size(240, 39)
		self.ScoreLabel.TabIndex = 4
		self.ScoreLabel.Text = "Score: 0"
		# 
		# ListenPicture
		# 
		self.ListenPicture.BackColor = System.Drawing.Color.Silver
		self.ListenPicture.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle
		self.ListenPicture.Image = cast(System.Drawing.Image,resources.GetObject("ListenPicture.Image"))
		self.ListenPicture.Location = System.Drawing.Point(395, 565)
		self.ListenPicture.Name = "ListenPicture"
		self.ListenPicture.Size = System.Drawing.Size(56, 50)
		self.ListenPicture.SizeMode = System.Windows.Forms.PictureBoxSizeMode.StretchImage
		self.ListenPicture.TabIndex = 7
		self.ListenPicture.TabStop = false
		self.ListenPicture.MouseLeave += self.IconMouseLeave as System.EventHandler
		self.ListenPicture.Click += self.ListenPictureClick as System.EventHandler
		self.ListenPicture.MouseEnter += self.IconMouseEnter as System.EventHandler
		# 
		# AdditionIcon
		# 
		self.AdditionIcon.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle
		self.AdditionIcon.Image = cast(System.Drawing.Image,resources.GetObject("AdditionIcon.Image"))
		self.AdditionIcon.Location = System.Drawing.Point(11, 13)
		self.AdditionIcon.Name = "AdditionIcon"
		self.AdditionIcon.Size = System.Drawing.Size(60, 60)
		self.AdditionIcon.SizeMode = System.Windows.Forms.PictureBoxSizeMode.StretchImage
		self.AdditionIcon.TabIndex = 9
		self.AdditionIcon.TabStop = false
		self.AdditionIcon.Tag = "ADDITION"
		self.AdditionIcon.MouseLeave += self.IconMouseLeave as System.EventHandler
		self.AdditionIcon.Click += self.IconClick as System.EventHandler
		self.AdditionIcon.MouseEnter += self.IconMouseEnter as System.EventHandler
		# 
		# SubtractionIcon
		# 
		self.SubtractionIcon.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle
		self.SubtractionIcon.Image = cast(System.Drawing.Image,resources.GetObject("SubtractionIcon.Image"))
		self.SubtractionIcon.Location = System.Drawing.Point(77, 12)
		self.SubtractionIcon.Name = "SubtractionIcon"
		self.SubtractionIcon.Size = System.Drawing.Size(60, 60)
		self.SubtractionIcon.SizeMode = System.Windows.Forms.PictureBoxSizeMode.StretchImage
		self.SubtractionIcon.TabIndex = 10
		self.SubtractionIcon.TabStop = false
		self.SubtractionIcon.Tag = "SUBTRACTION"
		self.SubtractionIcon.MouseLeave += self.IconMouseLeave as System.EventHandler
		self.SubtractionIcon.Click += self.IconClick as System.EventHandler
		self.SubtractionIcon.MouseEnter += self.IconMouseEnter as System.EventHandler
		# 
		# SpellingIcon
		# 
		self.SpellingIcon.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle
		self.SpellingIcon.Image = cast(System.Drawing.Image,resources.GetObject("SpellingIcon.Image"))
		self.SpellingIcon.Location = System.Drawing.Point(143, 12)
		self.SpellingIcon.Name = "SpellingIcon"
		self.SpellingIcon.Size = System.Drawing.Size(60, 60)
		self.SpellingIcon.SizeMode = System.Windows.Forms.PictureBoxSizeMode.StretchImage
		self.SpellingIcon.TabIndex = 11
		self.SpellingIcon.TabStop = false
		self.SpellingIcon.Tag = "SPELLING"
		self.SpellingIcon.MouseLeave += self.IconMouseLeave as System.EventHandler
		self.SpellingIcon.Click += self.IconClick as System.EventHandler
		self.SpellingIcon.MouseEnter += self.IconMouseEnter as System.EventHandler
		# 
		# GameForm
		# 
		self.AutoScaleDimensions = System.Drawing.SizeF(6, 13)
		self.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
		self.BackColor = System.Drawing.Color.Silver
		self.ClientSize = System.Drawing.Size(472, 628)
		self.Controls.Add(self.SpellingIcon)
		self.Controls.Add(self.SubtractionIcon)
		self.Controls.Add(self.AdditionIcon)
		self.Controls.Add(self.ListenPicture)
		self.Controls.Add(self.ScoreLabel)
		self.Controls.Add(self.MessageLabel)
		self.Controls.Add(self.AnswerLabel)
		self.Controls.Add(self.FlashCardPictureBox)
		self.MaximizeBox = false
		self.MinimizeBox = false
		self.Name = "GameForm"
		self.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen
		self.Text = "MainForm"
		self.TopMost = true
		self.Load += self.GameFormLoad as System.EventHandler
		self.KeyDown += self.GameFormKeyDown as System.Windows.Forms.KeyEventHandler
		cast(System.ComponentModel.ISupportInitialize,self.FlashCardPictureBox).EndInit()
		cast(System.ComponentModel.ISupportInitialize,self.ListenPicture).EndInit()
		cast(System.ComponentModel.ISupportInitialize,self.AdditionIcon).EndInit()
		cast(System.ComponentModel.ISupportInitialize,self.SubtractionIcon).EndInit()
		cast(System.ComponentModel.ISupportInitialize,self.SpellingIcon).EndInit()
		self.ResumeLayout(false)
	private AdditionIcon as System.Windows.Forms.PictureBox
	private SubtractionIcon as System.Windows.Forms.PictureBox
	private SpellingIcon as System.Windows.Forms.PictureBox
	private FlashCardPictureBox as System.Windows.Forms.PictureBox
	private AnswerLabel as System.Windows.Forms.Label
	private ListenPicture as System.Windows.Forms.PictureBox
	private ScoreLabel as System.Windows.Forms.Label
	private MessageLabel as System.Windows.Forms.Label
	



