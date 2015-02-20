class CreateJoinTableCommitteeVoivodeship < ActiveRecord::Migration
  def change
    create_join_table :committees, :voivodeships do |t|
      # t.index [:committee_id, :voivodeship_id]
      # t.index [:voivodeship_id, :committee_id]
    end
  end
end
