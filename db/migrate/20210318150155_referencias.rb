class Referencias < ActiveRecord::Migration[6.1]
  def change
    add_reference :comunicados, :receptor, foreign_key: { to_table: :personas }
    add_reference :comunicados, :creador, foreign_key: { to_table: :personas }
    add_reference :adjuntos, :comunicado, foreign_key: true
    add_reference :comunicados, :conversation, foreign_key: true
  end
end
