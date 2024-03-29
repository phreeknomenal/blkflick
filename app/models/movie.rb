# == Schema Information
#
# Table name: movies
#
#  id           :integer          not null, primary key
#  banner_image :string
#  best_quote   :string
#  duration     :integer
#  excerpt      :string
#  overview     :string
#  plot         :text
#  poster       :string
#  rating       :float
#  release_date :date
#  title        :string
#  trailer      :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  director_id  :integer
#
class Movie < ApplicationRecord
  belongs_to :director

  has_many :movie_genres
  has_many :genres, through: :movie_genres

  validates :title, presence: true, uniqueness: true
  validates :release_date, presence: true
  validates :duration, presence: true
  validates :poster, presence: true

  has_rich_text :overview
  has_rich_text :plot
  # validates :banner_image, presence: true
  # validates :plot, presence: true
  # validates :overview, presence: true
  # validates :trailer, presence: true
  # validates :rating, presence: true

  def formatted_duration
    "#{duration / 60}hours #{duration % 60}minutes"
  end
end
