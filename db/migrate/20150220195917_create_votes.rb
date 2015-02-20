class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.belongs_to :committee, index: true
      t.belongs_to :constituency, index: true
      t.integer :yes_vote

      t.timestamps null: false
    end
    add_foreign_key :votes, :committees
    add_foreign_key :votes, :constituencies
  end
end
