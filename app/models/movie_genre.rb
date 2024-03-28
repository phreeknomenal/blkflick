# == Schema Information
#
# Table name: movie_genres
#
#  id         :integer          not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  genre_id   :integer          not null
#  movie_id   :integer          not null
#
# Indexes
#
#  index_movie_genres_on_genre_id  (genre_id)
#  index_movie_genres_on_movie_id  (movie_id)
#
# Foreign Keys
#
#  genre_id  (genre_id => genres.id)
#  movie_id  (movie_id => movies.id)
#
class MovieGenre < ApplicationRecord
  belongs_to :movie
  belongs_to :genre
  validates :movie_id, uniqueness: { scope: :genre_id }
end
