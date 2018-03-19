class AgrNro < ActiveRecord::Migration[5.0]
  def change
    add_column :articles, :comentarios, :integer
  end
end
