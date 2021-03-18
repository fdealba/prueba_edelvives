class Persona < ApplicationRecord
  has_many :mensajes_recibidos, class_name: 'Comunicado', foreign_key: 'receptor_id'
  has_many :mensajes_enviados, class_name: 'Comunicado', foreign_key: 'creador_id'
end
