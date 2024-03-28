# == Schema Information
#
# Table name: directors
#
#  id         :integer          not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  movie_id   :integer
#  person_id  :integer          not null
#
# Indexes
#
#  index_directors_on_movie_id   (movie_id)
#  index_directors_on_person_id  (person_id)
#
# Foreign Keys
#
#  movie_id   (movie_id => movies.id)
#  person_id  (person_id => people.id)
#
class Director < ApplicationRecord
  belongs_to :person
  belongs_to :movie
  validates :person_id, uniqueness: { scope: :movie_id }
end
