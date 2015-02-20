class AddUserIdToConstituency < ActiveRecord::Migration
  def change
    add_reference :constituencies, :user, index: true
    add_foreign_key :constituencies, :users
  end
end
