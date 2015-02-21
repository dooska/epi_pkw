class RemoveUserIdFromConstituency < ActiveRecord::Migration
  def change
    remove_column :constituencies, :user_id, :integer
  end
end
