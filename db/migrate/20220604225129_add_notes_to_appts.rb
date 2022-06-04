class AddNotesToAppts < ActiveRecord::Migration[7.0]
  def change
    add_column :appts, :notes, :string
  end
end
