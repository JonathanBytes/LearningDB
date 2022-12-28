import jonathanDB as jdb

def new_query():
    print('Ingresa el nuevo registro\n')
    name = input('Nombre (varchar): ')
    gender = input('Género (varchar): ')
    grade = input('Nota (float): ')
    cuteness = input('Lindura (varchar): ')
    return (name, gender, grade, cuteness)

conn, cur = jdb.start_connection()

print('Ingrese una nueva consulta.')
name = input('Ingresa un nombre: ')
jdb.query(cur,name)

# name, gender, grade, cuteness = new_query()
# jdb.new_register(cur,name,gender,grade,cuteness,verbose=True)

jdb.close_conn(conn)
