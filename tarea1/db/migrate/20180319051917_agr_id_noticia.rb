class AgrIdNoticia < ActiveRecord::Migration[5.0]
  def change
    add_column :comentaries, :article_id, :integer
  end
end
