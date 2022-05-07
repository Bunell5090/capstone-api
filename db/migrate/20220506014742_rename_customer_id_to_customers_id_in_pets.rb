class RenameCustomerIdToCustomersIdInPets < ActiveRecord::Migration[7.0]
  def change
    rename_column :pets, :customer_id, :customers_id
  end
end
