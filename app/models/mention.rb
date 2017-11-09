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

class Mention < ApplicationRecord
  belongs_to :comment
  belongs_to :user
end
