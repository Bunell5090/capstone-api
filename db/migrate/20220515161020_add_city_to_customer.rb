class AddCityToCustomer < ActiveRecord::Migration[7.0]
  def change
    add_column :customers, :city, :string
  end
end
