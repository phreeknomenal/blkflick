class CreateWriters < ActiveRecord::Migration[7.0]
  def change
    create_table :writers do |t|
      t.references :person, null: false, foreign_key: true
      t.references :movie, foreign_key: true

      t.timestamps
    end
  end
end
