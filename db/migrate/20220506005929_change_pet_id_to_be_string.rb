class ChangePetIdToBeString < ActiveRecord::Migration[7.0]
  def change
    change_column :appts, :pet_id, :integer
  end
end
