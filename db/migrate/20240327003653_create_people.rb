class CreatePeople < ActiveRecord::Migration[7.0]
  def change
    create_table :people do |t|
      t.string :first_name  
      t.string :last_name
      t.date :date_of_birth
      t.date :date_of_death
      t.string :place_of_birth
      t.string :photo
      t.text :biography

      t.timestamps
    end
  end
end
