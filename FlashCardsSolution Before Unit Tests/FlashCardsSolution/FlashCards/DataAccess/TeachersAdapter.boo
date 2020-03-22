namespace FlashCards

import System
import System.Collections

class TeachersAdapter:
"""Description of TeachersAdapter"""
	def constructor():
		pass
		
	def GetAllTeachers() as List:
		teachers = List()		
		reader = DatabaseHelper().ExecuteSelect("Select * FROM Teachers ORDER BY Name", Hashtable())
	
		while reader.Read():
			teachers.Add(Teacher(reader.GetGuid(0), reader.GetString(1)))
			
		return teachers
		
	def AddTeacher(name as string) as int:	
		sql = "INSERT INTO Teachers (Name) VALUES (@Name);"
		params = Hashtable()
		params.Add("@Name", name)
		
		return DatabaseHelper().ExecuteCommand(sql, params) 
		
	def DeleteTeacher(teacherToDelete as Teacher):
		sql = "DELETE FROM Teachers WHERE TeacherID = @TeacherID"
		params = Hashtable()
		params.Add("@TeacherID", teacherToDelete.ID())
		
		return DatabaseHelper().ExecuteCommand(sql, params) 
		
			

