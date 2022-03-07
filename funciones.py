import sys
import MySQLdb

#FUNCIONES DE CONEXIÓN Y DESCONEXIÓN
#Función Conexión:
def ConectarBD(host, usuario, password, nombrebd):
    try:
        db = MySQLdb.connect(host, usuario, password, nombrebd)
        return db
    except MySQLdb.Error as e:
        print ("No se ha podido establecer la conexión.",e)
        sys.exit(1)


#Función Desconexión:
def Desconexión (db):
    db.close()



#Función Menú
def Menu():
    menu= '''



    
    1.Listar las hermandades, .
    2.Pide una hermandad y muestra los nombres de sus titulares.
    3.Introduce un escultor y muestra sus obras.
    4.Insertar nueva hermandad.
    5.Elimina la hermandad del Sol pedidos por teclas.
    6.Actualizar la informacion de una hermandad pedido por teclado.
    
    '''
    print (menu)
    while True:
        try:
            opcion= int(input("Introduzca la opción deseada: "))
            return opcion
        except:
            print("La opción introducida es incorrecta.")

#FUNCIONES OPCIONES DE MENÚ
#Función Ejercicio 1:     1.Listar las hermandades.

def ListarCompo(db):
    sql= "SELECT nombre_hermandad, count(*) as 'nombre_titular' FROM hermandad, titulare WHERE nombre = nombreautor GROUP BY nombre"
    cursor = db.cursor(MySQLdb.cursors.DictCursor)
    try:
        cursor.execute(sql)
        lista = cursor.fetchall()
        for comp in lista:
            print(comp["nombre_hermandad"],"---",comp["nombre_titular"])
    except:
        print("Consulta: Error.")

#Función Ejercicio2: Pide una hermandad y muestra los nombres de sus titulares..
def BuscarTipo(db,tipo):
    sql = "SELECT nombre_hermandad FROM hermandad WHERE tipo='%s'" % tipo
    cursor = db.cursor(MySQLdb.cursors.DictCursor)
    try:
        cursor.execute(sql)
        if cursor.rowcount==0:
            print("No existe esa hermandad.")
        else:
            tip = cursor.fetchall()
            for comp in tip:
                print(comp[" nombre_titular"])
    except:
        print("Consulta: Error.")

#3.Introduce un escultor y muestra sus obras.

def Listarescultor(db,escultor):
    sql="SELECT * FROM titulares WHERE escultor='%s'" % escultor
    cursor = db.cursor(MySQLdb.cursors.DictCursor)
    try:
        cursor.execute(sql)
        if cursor.rowcount==0:
            print("No existe el escultor en la base de datos.")
        else:
            listas = cursor.fetchall()
            for lista in listas:
                print(lista["nombre_titulares"])
    except:
        print("Consulta: Error.")

