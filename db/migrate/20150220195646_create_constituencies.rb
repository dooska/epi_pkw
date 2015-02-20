class CreateConstituencies < ActiveRecord::Migration
  def change
    create_table :constituencies do |t|
      t.string :name
      t.belongs_to :voivodeship, index: true
      t.integer :voters
      t.integer :used_ballots
      t.integer :invalid_no_choise
      t.integer :invalid_more_choises
      t.integer :invalid_other

      t.timestamps null: false
    end
    add_foreign_key :constituencies, :voivodeships
  end
end
