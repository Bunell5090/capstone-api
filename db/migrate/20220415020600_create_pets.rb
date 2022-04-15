class CreatePets < ActiveRecord::Migration[7.0]
  def change
    create_table :pets do |t|
      t.string :name
      t.string :customer_id
      t.string :species
      t.string :breed
      t.string :birthday
      t.string :sex
      t.boolean :sterilized

      t.timestamps
    end
  end
end
