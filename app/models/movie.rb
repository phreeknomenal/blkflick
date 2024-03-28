# == Schema Information
#
# Table name: movies
#
#  id           :integer          not null, primary key
#  banner_image :string
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
#
class Movie < ApplicationRecord
  has_many :directors
  has_many :people, through: :directors

  has_many :movie_genres
  has_many :genres, through: :movie_genres

  has_many :writers
  has_many :people, through: :writers

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
end
