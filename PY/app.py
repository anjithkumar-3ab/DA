import mysql.connector as q
conn = q.connect(
    host = "localhost",
    user = "root",
    password = "r00t1234"
)
print(conn, "Success")

C1= conn.cursor()
C1.execute("SHOW DATABASES")

for i in C1:
    print(i)
