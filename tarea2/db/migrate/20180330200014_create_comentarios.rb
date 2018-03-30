class CreateComentarios < ActiveRecord::Migration[5.0]
  def change
    create_table :comentarios do |t|
      t.string :author
      t.string :comment
      t.references :noticia, foreign_key: true

      t.timestamps
    end
  end
end
