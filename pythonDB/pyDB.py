import jonathanDB as jdb

conn, cur = jdb.start_connection()

print('Ingrese una nueva consulta.')
name = input('Ingresa un nombre: ')
jdb.query(cur,name)

print('Ingresa el nuevo registro\n')
name = input('Nombre (varchar): ')
gender = input('Género (varchar): ')
grade = input('Nota (float): ')
cuteness = input('Lindura (varchar): ')
# name = 'David'
# gender = 'Male'
# grade = 3.5
# cuteness = 'yep'

jdb.new_register(cur,name,gender,grade,cuteness,verbose=True)

jdb.close_conn(conn)
