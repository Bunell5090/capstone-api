class RenamePetIdToPetsIdInAppts < ActiveRecord::Migration[7.0]
  def change
    rename_column :appts, :pet_id, :pets_id
  end
end
