class ChangePetsIdToBeInteger < ActiveRecord::Migration[7.0]
  def change
    change_column :appts, :pets_id, 'integer USING CAST(pets_id AS integer)'
  end
end
