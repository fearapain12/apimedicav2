# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

#tabla User
User.create(user:'alfredo',password:'alfredo')
User.create(user:'oscar',password:'oscar')
User.create(user:'jaan',password:'jaan')

#tabla Location
Location.create(name:'Hospital Cardiomed',latitude:'31.873306',longitude:'-116.624220')
Location.create(name:'Moctezuma Medica y Dental',latitude:'31.871073',longitude:'-116.626657')
Location.create(name:'Unidad de Especialidades Medicas de Baja California',latitude:'31.876322',longitude:'-116.620150')
Location.create(name:'Clinica 32 IMSS',latitude:'31.862889',longitude:'-116.621375')
Location.create(name:'Clinica Hospital Ensenada',latitude:'31.850376',longitude:'-116.607813')

#tabla Doctor
Doctor.create(nombre:'Dr. Jorge David Magaña Rodriguez',especialidad:'Urologo',telefono:'6461734500',Location_id:'1')
Doctor.create(nombre:'Dra. Gina Isabel Hernandez Gonzales',especialidad:'Ginecologa',telefono:'6469476264',Location_id:'2')
Doctor.create(nombre:'Dr. Carlos Alberto Galindo Hernandez',especialidad:'Pediatra',telefono:'6462163517',Location_id:'3')
Doctor.create(nombre:'Dra. Lizeth Jazmin Cortez Galdean',especialidad:'Ginecologa',telefono:'6461165359',Location_id:'4')
Doctor.create(nombre:'Dr. Cesar M Perez Mejorado',especialidad:'Traumatologo',telefono:'6461782518',Location_id:'5')

#tabla prescription
Prescription.create(medicamento:'amoxicilina',User_id:'1',Doctor_id:'1')
Prescription.create(medicamento:'paracetamol',User_id:'1',Doctor_id:'1')
Prescription.create(medicamento:'naproxeno',User_id:'1',Doctor_id:'1')
Prescription.create(medicamento:'aceclofenoco',User_id:'2',Doctor_id:'3')
Prescription.create(medicamento:'ambroxol',User_id:'2',Doctor_id:'2')
Prescription.create(medicamento:'acitromicina',User_id:'2',Doctor_id:'3')
Prescription.create(medicamento:'bicatulamida',User_id:'3',Doctor_id:'4')
Prescription.create(medicamento:'cefotaxima',User_id:'3',Doctor_id:'4')
Prescription.create(medicamento:'diclofenaco',User_id:'3',Doctor_id:'5')

#tabla comentarios
Comment.create(comentario:'muy bueno',puntuacion:'4',Doctor_id:'1',)
Comment.create(comentario:'pesimo',puntuacion:'2',Doctor_id:'1',)
Comment.create(comentario:'muy amable',puntuacion:'5',Doctor_id:'2',)
Comment.create(comentario:'te atiende y explica super bien',puntuacion:'5',Doctor_id:'2',)
Comment.create(comentario:'excelente medico y excelente persona',puntuacion:'5',Doctor_id:'3',)
Comment.create(comentario:'diagnosticos precisos y buenos tratamientos',puntuacion:'5',Doctor_id:'3',)
Comment.create(comentario:'recomendada al 100',puntuacion:'5',Doctor_id:'4',)
Comment.create(comentario:'ampliamente recomendado',puntuacion:'4',Doctor_id:'4',)
Comment.create(comentario:'pesima atencion',puntuacion:'1',Doctor_id:'5',)
Comment.create(comentario:'falta de delicadeza y atencion',puntuacion:'2',Doctor_id:'5',)
