class AddBestQuoteToMovies < ActiveRecord::Migration[7.0]
  def change
    add_column :movies, :best_quote, :string
  end
end
