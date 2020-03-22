namespace FlashCards

import System
import System.Data
import System.Data.SqlClient
import System.Collections


class DatabaseHelper:
"""Description of DatabaseHelper"""
	def constructor():
		pass
		
	def GetConnection() as IDbConnection:
		return SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=C:\\Course933\\FlashCardsDatabase\\FlashCards.mdf;Integrated Security=True;Connect Timeout=30;User Instance=True")
		
	
	def ExecuteCommand(sql as string, params as Hashtable) as int:
		cmd = SqlCommand(sql, GetConnection())
		
		for item as DictionaryEntry in params:
			cmd.Parameters.AddWithValue(item.Key, item.Value)
			
		
		cmd.Connection.Open()
		rowsaffected  = cmd.ExecuteNonQuery()
		cmd.Connection.Close()
		
		return rowsaffected
		
		
	def ExecuteSelect(sql as string, params as Hashtable) as IDataReader:
		cmd = SqlCommand(sql, GetConnection())
		
		for item as DictionaryEntry in params:
			cmd.Parameters.AddWithValue(item.Key, item.Value)
			
		cmd.Connection.Open()
		return cmd.ExecuteReader(CommandBehavior.CloseConnection)

		
		
		
			

		

