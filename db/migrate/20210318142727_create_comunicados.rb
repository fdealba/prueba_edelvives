class CreateComunicados < ActiveRecord::Migration[6.1]
  def change
    create_table :comunicados do |t|
      t.string :asunto
      t.text :contenido

      t.timestamps
    end
  end
end
