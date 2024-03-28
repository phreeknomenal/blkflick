# == Schema Information
#
# Table name: people
#
#  id             :integer          not null, primary key
#  biography      :text
#  date_of_birth  :date
#  date_of_death  :date
#  first_name     :string
#  last_name      :string
#  photo          :string
#  place_of_birth :string
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#
class Person < ApplicationRecord
  has_one :directors
  has_many :movies, through: :directors

  has_many :writers
  has_many :movies, through: :writers
  
  validates :first_name, presence: true
  validates :last_name, presence: true
  # validates :date_of_birth, presence: true
  # validates :place_of_birth, presence: true
  # validates :biography, presence: true
  # validates :photo, presence: true

  has_rich_text :biography

  def full_name
    "#{first_name} #{last_name}"
  end

  def age 
    if date_of_death?
      date_of_death.year - date_of_birth.year
    else
      Date.today.year - date_of_birth.year
    end
  end
end
