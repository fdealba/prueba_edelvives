class Comunicado < ApplicationRecord
  belongs_to :creador, class_name: "Persona", foreign_key: "creador_id"
  belongs_to :receptor, class_name: "Persona", foreign_key: "receptor_id"
  belongs_to :conversation
  has_many :adjuntos
end
