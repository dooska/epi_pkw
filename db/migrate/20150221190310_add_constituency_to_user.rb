class AddConstituencyToUser < ActiveRecord::Migration
  def change
    add_reference :users, :constituency, index: true
    add_foreign_key :users, :constituencies
  end
end
