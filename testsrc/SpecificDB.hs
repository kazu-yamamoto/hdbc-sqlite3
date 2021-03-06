module SpecificDB where
import Database.HDBC
import Database.HDBC.Sqlite3
import Test.HUnit

connectDB = 
    handleSqlError (connectSqlite3 "testtmp.sql3")

dateTimeTypeOfSqlValue :: SqlValue -> String
dateTimeTypeOfSqlValue (SqlPOSIXTime _) = "TEXT"
dateTimeTypeOfSqlValue (SqlEpochTime _) = "INTEGER"
dateTimeTypeOfSqlValue _ = "TEXT"

supportsFracTime = True