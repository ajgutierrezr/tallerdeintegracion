class CreateNoticia < ActiveRecord::Migration[5.0]
  def change
    create_table :noticia do |t|
      t.string :title
      t.string :body
      t.string :subtitle

      t.timestamps
    end
  end
end
