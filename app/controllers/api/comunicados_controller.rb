module Api
  class ComunicadosController < ApplicationController
    def mayor_de_edad
      comunicados = Comunicado.receptor_mayor_de_edad.map do |comunicado|
        {
          id: comunicado.id,
          asunto: comunicado.asunto,
          contenido: comunicado.contenido,
          fecha_comunicado: comunicado.created_at,
          receptor: {
            nombre: comunicado.receptor.nombre,
            fecha_nacimiento: comunicado.receptor.fecha_nacimiento
          },
          conversation_nro: comunicado.conversation_id,
          adjuntos: comunicado.adjuntos.length
        }
      end
      render json: {
        comunicados: comunicados,
      }
    end
  end
end
