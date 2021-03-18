module Api
  class ComunicadosController < ApplicationController
    def mayor_de_edad
      comunicados = Comunicado.receptor_mayor_de_edad.map do |comunicado|
        {
          "id": comunicado.id,
          "asunto": comunicado.asunto,
          "contenido": comunicado.contenido,
          "created_at": comunicado.created_at,
          "receptor": comunicado.receptor,
          "creador": comunicado.creador,
          "conversation_id": comunicado.conversation_id,
          "adjuntos": comunicado.adjuntos.length
        }
      end
      render json: {
        comunicados: comunicados,
      }
    end
  end
end
