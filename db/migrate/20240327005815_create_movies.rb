class CreateMovies < ActiveRecord::Migration[7.0]
  def change
    create_table :movies do |t|
      t.string :title
      t.date :release_date
      t.integer :duration
      t.string :poster
      t.string :banner_image
      t.text :plot
      t.string :overview
      t.string :trailer
      t.float :rating


      t.timestamps
    end
  end
end
