import mysql.connector

connection = mysql.connector.connect(host = "localhost", username = "root", 
                                     password = "M*5FBs2%", database="learning")

my_cursor=connection.cursor()

#insertion of values
#ins= "insert into student(s_id,s_name) values (%s,%s)"
#val=(2,"seema")
#my_cursor.execute(ins,val) #executing the query

#updation of values
#upd = " update student set s_name = %s where s_id=%s"
#val = ("Rajesh", 2)
#my_cursor.execute(upd, val)

#deletion of values
#delete = "delete from student where s_id=%s"
#val = (2,) #need to give a comma
#my_cursor.execute(delete, val)

#displaying
select = "Select * from student"
my_cursor.execute(select)

result = my_cursor.fetchall()
for res in result:
    print(res)

connection.commit() #for the changes to show up
connection.close()

print("Connected successfully")