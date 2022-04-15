class CreateAppts < ActiveRecord::Migration[7.0]
  def change
    create_table :appts do |t|
      t.string :pet_id
      t.string :date
      t.string :time
      t.string :type
      t.string :vet_id

      t.timestamps
    end
  end
end
