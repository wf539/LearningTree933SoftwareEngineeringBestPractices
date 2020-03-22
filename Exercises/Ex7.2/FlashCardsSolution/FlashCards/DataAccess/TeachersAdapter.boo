namespace FlashCards

import System
import System.Collections

class TeachersAdapter:
"""Description of TeachersAdapter"""
	def constructor():
		pass
		
	def GetAllTeachers() as List:
		teachers = List()	
		
		// Add a SELECT statement below that selects all the fields and records from the teachers table 
		// and orders them by Name
		sql = ""
		reader = DatabaseHelper().ExecuteSelect(sql, Hashtable())
	
		while reader.Read():
			teachers.Add(Teacher(reader.GetGuid(0), reader.GetString(1)))
			
		return teachers
		
	def AddTeacher(name as string) as int:	
		// Add an INSERT statement below that adds a new teacher's name 
		// into the Teachers table
		sql = ""
		params = Hashtable()
		params.Add("@Name", name)
		
		return DatabaseHelper().ExecuteCommand(sql, params) 
		
	def DeleteTeacher(teacherToDelete as Teacher):
		// Add a DELETE statement below that deletes a teacher from the
		// Teachers table using the TeacherID field as the primary key
		sql = ""
		params = Hashtable()
		params.Add("@TeacherID", teacherToDelete.ID())
		
		return DatabaseHelper().ExecuteCommand(sql, params) 
		
			

