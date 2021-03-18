# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Persona.destroy_all
Conversation.destroy_all
Comunicado.destroy_all
Adjunto.destroy_all

menorDeEdad = Date.today - (365 * 10) # 10 años de edad
mayorDeEdad = Date.today - (365 * 50) # 50 años de edad

felipe = Persona.create!(nombre: 'felipe', fecha_nacimiento: mayorDeEdad)
pedro = Persona.create!(nombre: 'pedro', fecha_nacimiento: mayorDeEdad)
hernan = Persona.create!(nombre: 'hernan', fecha_nacimiento: mayorDeEdad)
julian = Persona.create!(nombre: 'julian', fecha_nacimiento: menorDeEdad)
santiago = Persona.create!(nombre: 'santiago', fecha_nacimiento: menorDeEdad)
zack = Persona.create!(nombre: 'zack', fecha_nacimiento: mayorDeEdad)

conversacion_felipe_y_pedro = Conversation.create!()
conversacion_hernan_y_julian = Conversation.create!()
conversacion_santiago_y_zack = Conversation.create!()


comunicado_felipe_y_pedro = Comunicado.create(asunto: 'hola', contenido: 'hola felipe como estas', receptor: felipe, creador: pedro, conversation: conversacion_felipe_y_pedro)
comunicado_felipe_y_pedro2 = Comunicado.create(asunto: 'hola', contenido: 'hola pedro como estas', receptor: pedro, creador: felipe, conversation: conversacion_felipe_y_pedro)

Adjunto.create!(comunicado: comunicado_felipe_y_pedro)
Adjunto.create!(comunicado: comunicado_felipe_y_pedro)
Adjunto.create!(comunicado: comunicado_felipe_y_pedro2)


comunicado_hernan_y_julian = Comunicado.create(asunto: 'hola', contenido: 'hola hernan como estas', receptor: hernan, creador: julian, conversation: conversacion_hernan_y_julian)
comunicado_hernan_y_julian2 = Comunicado.create(asunto: 'hola', contenido: 'hola julian como estas', receptor: julian, creador: hernan, conversation: conversacion_hernan_y_julian)

Adjunto.create!(comunicado: comunicado_hernan_y_julian)
Adjunto.create!(comunicado: comunicado_hernan_y_julian)
Adjunto.create!(comunicado: comunicado_hernan_y_julian2)

comunicado_santiago_y_zack = Comunicado.create(asunto: 'hola', contenido: 'hola santiago como estas', receptor: santiago, creador: zack, conversation: conversacion_santiago_y_zack)
comunicado_santiago_y_zack2 = Comunicado.create(asunto: 'hola', contenido: 'hola zack como estas', receptor: zack, creador: santiago, conversation: conversacion_santiago_y_zack)

Adjunto.create!(comunicado: comunicado_santiago_y_zack)
Adjunto.create!(comunicado: comunicado_santiago_y_zack)
Adjunto.create!(comunicado: comunicado_santiago_y_zack2)