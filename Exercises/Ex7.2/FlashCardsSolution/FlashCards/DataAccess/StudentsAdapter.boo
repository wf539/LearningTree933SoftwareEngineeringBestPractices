namespace FlashCards

import System
import System.Collections

class StudentsAdapter:
"""Description of StudentsAdapter"""
	def constructor():
		pass


	def AddStudent(teacher as Teacher, name as string) as int:
		// Add and INSERT statement below that adds a student into the Students table.
		// You will need to save the TeacherID and Name fields
		sql = ""
		params = Hashtable()
		params.Add("@TeacherID", teacher.ID())
		params.Add("@Name", name)
		
		return DatabaseHelper().ExecuteCommand(sql, params) 
		

	def GetStudentsForTeacher(teacher as Teacher) as List:
		students = List()
		
		// Add a SELECT statement below that retrieves all the students
		// assigned to a particular teacher.  Use the TeacherID field as the 
		// foreign key.
		sql = ""
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
		// Add a SELECT statement below that retrieves all fields from the 
		// Scores table but only records with the correct StudentID 
		sql = ""
		params = Hashtable()
		params.Add("@StudentID", student.ID())
		
		reader = DatabaseHelper().ExecuteSelect(sql, params)
	
		while reader.Read():
			scores.Add(Score(reader.GetGuid(0),   reader.GetDateTime(2), reader.GetInt32(3)))
			
		return scores
		
	def AddNewScore(student as Student, newScore as int):
		// Add an INSERT statement below that add a score to the Scores table.  
		//You will need to save the StudentID, GameDate and Score field values
		sql = ""
		params = Hashtable()
		params.Add("@StudentID", student.ID())
		params.Add("@GameDate", date.Now)
		params.Add("@Score", newScore)
		
		return DatabaseHelper().ExecuteCommand(sql, params) 
		
	def DeleteStudent(studentToDelete as Student):
		// Add a DELETE statement below to remove a student from the 
		// Students table using the StudentID field as the primary key
		sql = ""
		params = Hashtable()
		params.Add("@StudentID", studentToDelete.ID())
		
		return DatabaseHelper().ExecuteCommand(sql, params) 
		
		
		
		
	
	
