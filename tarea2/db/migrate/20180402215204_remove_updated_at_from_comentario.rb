class RemoveUpdatedAtFromComentario < ActiveRecord::Migration[5.0]
  def change
    remove_column :comentarios, :updated_at, :datetime
  end
end
