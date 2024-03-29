class AddDirectorIdToMovies < ActiveRecord::Migration[7.0]
  def change
    add_column :movies, :director_id, :integer
  end
end
