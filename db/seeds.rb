# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

felipe = Persona.create!(nombre: 'felipe', fecha_nacimiento: '08/02/1999')
pedro = Persona.create!(nombre: 'pedro', fecha_nacimiento: '20/01/1989')

conversacion = Conversation.create!()

comunicado = Comunicado.create(asunto: 'hola', contenido: 'hola como estas', receptor: felipe, creador: pedro, conversation: conversacion)

adjunto = Adjunto.create!(comunicado: comunicado)
