class CreateComentaries < ActiveRecord::Migration[5.0]
  def change
    create_table :comentaries do |t|
      t.string :content
      t.integer :user_id

      t.timestamps
    end
  end
end
