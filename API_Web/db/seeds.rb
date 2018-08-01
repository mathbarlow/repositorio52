# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#Usuario.create("10225008", "Administrador", "Administrador", "0", "", "admin@uamiga.com", "realvanargoz", 1)

=begin
	
1) Administrador
2) Universidad
3) Tutor
4) Estudiante / Basico
	
=end

# -------------- USUARIOS ------------------

Usuario.create(email: 'admin@uamiga.com', cedula: '10225008', nombre: 'Administrador', apellido: 'Administrador', telefono: '3004549636', direccion: '', password: "realvanargoz", perfil: 1)
Usuario.create(email: 'universidad@uamiga.com', cedula: '159753', nombre: 'Universidad', apellido: 'Universidad', telefono: '', direccion: '', password: "un1v3rs1d4d*", perfil: 2)
Usuario.create(email: 'tutor@uamiga.com', cedula: '1022334949', nombre: 'Tutor', apellido: 'Tutor', telefono: '', direccion: '', password: "tut0r145*", perfil: 3)
Usuario.create(email: 'estudiante@uamiga.com', cedula: '123456', nombre: 'Estudiante', apellido: 'Estudiante', telefono: '', direccion: '', password: "123", perfil: 4)

# -------------- LOCALIDADES ------------------

nari  = Localidad.create(nombre: 'Antonio Narino')
unid  = Localidad.create(nombre: 'Barrios Unidos')
bosa  = Localidad.create(nombre: 'Bosa')
chapi = Localidad.create(nombre: 'Chapinero')
ciud  = Localidad.create(nombre: 'Ciudad Bolivar')
enga  = Localidad.create(nombre: 'Engativa')
fonti = Localidad.create(nombre: 'Fontibon')
kenne = Localidad.create(nombre: 'Kennedy')
cande = Localidad.create(nombre: 'La Candelaria')
martir  = Localidad.create(nombre: 'Los Martires')
aranda  = Localidad.create(nombre: 'Puente Aranda')
uribe   = Localidad.create(nombre: 'Rafael Uribe Uribe')
cristo  = Localidad.create(nombre: 'San Cristobal')
santa   = Localidad.create(nombre: 'Santa Fe')
suba    = Localidad.create(nombre: 'Suba')
sumap   = Localidad.create(nombre: 'Sumapaz')
teusa   = Localidad.create(nombre: 'Teusaquillo')
tunju   = Localidad.create(nombre: 'Tunjuelito')
usaq    = Localidad.create(nombre: 'Usaquen')
usme    = Localidad.create(nombre: 'Usme')

# -------------- UNIVERSIDADES ------------------

dist = Universidad.create(nombre: 'Distrital', nit: '777', telefono: '789', direccion:'cra 123')
poli = Universidad.create(nombre: 'Politecnico', nit: '888', telefono: '456', direccion:'cra 456')
fus = Universidad.create(nombre: 'San Mateo', nit: '999', telefono: '123', direccion:'cra 999')

# -------------- LOCAL_UNI ------------------

UniversidadLocalidad.create(localidad: usme, universidad: dist, sede: 'calle 52')
UniversidadLocalidad.create(localidad: chapi, universidad: poli, sede: 'cra 85')
UniversidadLocalidad.create(localidad: santa, universidad: fus, sede: 'calle 26')

# -------------- MATERIAS ------------------

mate 	= Materia.create(nombre: 'Matematicas')
ingles 	= Materia.create(nombre: 'Ingles')
sistem 	= Materia.create(nombre: 'Sistemas')

# -------------- MATERIA_UNI ------------------

#MateriaUni.create(materia: sistem, universidad: dist)
#MateriaUni.create(materia: ingles, universidad: poli)
#MateriaUni.create(materia: mate, universidad: dist)