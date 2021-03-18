class Comunicado < ApplicationRecord
  belongs_to :creador, class_name: "Persona", foreign_key: "creador_id"
  belongs_to :receptor, class_name: "Persona", foreign_key: "receptor_id"
  belongs_to :conversation
  has_many :adjuntos

  def self.receptor_mayor_de_edad
    eighteenYearsAgo = Date.today - (365 * 18)
    self.joins(:receptor)
        .where(receptor: { fecha_nacimiento: Date.new..eighteenYearsAgo})
  end
end
