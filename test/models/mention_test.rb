# == Schema Information
#
# Table name: mentions
#
#  id         :integer          not null, primary key
#  comment_id :integer
#  user_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class MentionTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
