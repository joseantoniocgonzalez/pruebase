from Funciones import *

db = ConectarBD("localhost", "hermandades","admin","cofradias")
opcion=Menu()
while opcion!=0:

#Opción 1 del menú:
    if opcion==1:
        Listarhermandad(db)
        print ("- - - - - - - - - - - - - - - - - - -")
        opcion=Menu()

#Opción 2 del menú:
    elif opcion==2:
        print ("que hermandades desea consultar,")
        busctipo=input("los titulares son: ")
        print("titulares ", busctipo)
        BuscarTipo(db,busctipo)
        opcion=Menu()

#Opción 3 del menú:
    elif opcion ==3:
        nombrescultor= input("Escriba el nombre del compositor que desea buscar: ")
        ListarApellido(db,escultor)
        opcion=Menu()