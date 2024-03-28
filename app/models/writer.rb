# == Schema Information
#
# Table name: writers
#
#  id         :integer          not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  movie_id   :integer
#  person_id  :integer          not null
#
# Indexes
#
#  index_writers_on_movie_id   (movie_id)
#  index_writers_on_person_id  (person_id)
#
# Foreign Keys
#
#  movie_id   (movie_id => movies.id)
#  person_id  (person_id => people.id)
#
class Writer < ApplicationRecord
  belongs_to :person
  belongs_to :movie
  validates :person_id, uniqueness: { scope: :movie_id }
end
