class ChangeIntstr < ActiveRecord::Migration[5.0]
  def change
    change_column :comentaries, :user_id, :string
  end
end
