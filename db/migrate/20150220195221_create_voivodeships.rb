class CreateVoivodeships < ActiveRecord::Migration
  def change
    create_table :voivodeships do |t|
      t.string :name
      t.integer :electoral_mandates

      t.timestamps null: false
    end
  end
end
