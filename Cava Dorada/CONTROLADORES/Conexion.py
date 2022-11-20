import mysql.connector

try:
    Conexion = mysql.connector.connect(
        host = 'localhost',
        port = 3306,
        user = 'root',
        password = 'Luciano91@',
        db = 'cava'
    )

    if Conexion.is_connected():
        print ("La Conexion fue Exitosa")

except: 
    print ("No Se Pudo Conectar a la Base de Datos")


def InsertarValor(self,nombre, apellido, dni, telefono, correo):
        if self.conexion.is_connected():
            try:
                cursor = self.conexion.cursor()
                sentenciaSQL= "INSERT INTO usuario VALUES(%s,%s,%s,%s,%s)"
                data= (nombre, apellido, dni, telefono, correo)

                cursor.execute(sentenciaSQL,data)
                self.conexion.commit()
                self.conexion.close()

            except:
                print("No se pudo concectar a la base de datos")


def BuscarObjeto(self, nombre):
        if self.conexion.is_connected():
            try:
                cursor = self.conexion.cursor()
                sentenciaSQL= "SELECT * from usuario where nombre like '%MAR%' "
                cursor.execute(sentenciaSQL)
                resultadoREAD = cursor.fetchall()
                self.conexion.close()
                return resultadoREAD

            except:
                print("No se pudo concectar a la base de datos")
              

