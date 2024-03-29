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
require "test_helper"

class MovieTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
