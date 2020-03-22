namespace FlashCards

import System
import System.Collections

class StudentsAdapter:
"""Description of StudentsAdapter"""
	def constructor():
		pass


	def AddStudent(teacher as Teacher, name as string) as int:
		sql = "INSERT INTO Students (TeacherID, Name) VALUES (@TeacherID, @Name)"
		params = Hashtable()
		params.Add("@TeacherID", teacher.ID())
		params.Add("@Name", name)
		
		return DatabaseHelper().ExecuteCommand(sql, params) 
		

	def GetStudentsForTeacher(teacher as Teacher) as List:
		students = List()
		sql = "Select * FROM Students WHERE TeacherID = @TeacherID"
		params = Hashtable()
		params.Add("@TeacherID", teacher.ID())
		
		reader = DatabaseHelper().ExecuteSelect(sql, params)
	
		while reader.Read():
			student = Student(reader.GetGuid(0),   reader.GetString(2))
			student.SetScores(GetScoresForStudent(student))
			students.Add(student)
			
		return students
	
	def GetScoresForStudent(student as Student) as List:
		scores = List()
		sql = "Select * FROM Scores WHERE StudentID = @StudentID"
		params = Hashtable()
		params.Add("@StudentID", student.ID())
		
		reader = DatabaseHelper().ExecuteSelect(sql, params)
	
		while reader.Read():
			scores.Add(Score(reader.GetGuid(0),   reader.GetDateTime(2), reader.GetInt32(3)))
			
		return scores
		
	def AddNewScore(student as Student, newScore as int):
		sql = "INSERT INTO Scores (StudentID, GameDate, Score) VALUES (@StudentID, @GameDate, @Score)"
		params = Hashtable()
		params.Add("@StudentID", student.ID())
		params.Add("@GameDate", date.Now)
		params.Add("@Score", newScore)
		
		return DatabaseHelper().ExecuteCommand(sql, params) 
		
	def DeleteStudent(studentToDelete as Student):
		sql = "DELETE FROM Students WHERE StudentID = @StudentID"
		params = Hashtable()
		params.Add("@StudentID", studentToDelete.ID())
		
		return DatabaseHelper().ExecuteCommand(sql, params) 
		
		
		
		
	
	
