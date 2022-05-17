class RemoveCityStateFromCustomer < ActiveRecord::Migration[7.0]
  def change
    remove_column :customers, :city_state, :string
  end
end
