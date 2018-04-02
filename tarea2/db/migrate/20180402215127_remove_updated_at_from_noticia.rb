class RemoveUpdatedAtFromNoticia < ActiveRecord::Migration[5.0]
  def change
    remove_column :noticia, :updated_at, :datetime
  end
end
