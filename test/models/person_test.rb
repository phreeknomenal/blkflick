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
require "test_helper"

class PersonTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
