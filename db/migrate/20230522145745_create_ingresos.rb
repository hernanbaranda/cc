class CreateIngresos < ActiveRecord::Migration[7.0]
  def change
    create_table :ingresos do |t|
      t.text :content
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
    add_index :ingresos, [:user_id, :created_at]
  end
end
