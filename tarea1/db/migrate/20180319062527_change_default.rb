class ChangeDefault < ActiveRecord::Migration[5.0]
  def change
    change_column :articles, :comentarios, :integer, :default => 0
  end
end
