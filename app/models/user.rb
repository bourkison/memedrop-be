# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  first_name      :string
#  last_name       :string
#  dob             :date
#  username        :string
#  email           :string
#  ad_key          :text
#  strikes         :integer
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  password_digest :text
#

class User < ApplicationRecord
  has_secure_password

  validates :email, :presence => true, :uniqueness => true
  validates :username, :presence => true, :uniqueness => true
  validates :password_digest, :presence => true


  # ASSOCIATIONS
  has_many :posts
  has_many :comments
  has_many :likes
  has_many :mentions

  # RELATIONSHIPS
  has_many :active_relationships, class_name: "Relationship", foreign_key: "follower_id", dependent: :destroy
  has_many :passive_relationships, class_name: "Relationship", foreign_key: "followed_id", dependent: :destroy
  has_many :following, through: :active_relationships, source: :followed
  has_many :followers, through: :passive_relationships, source: :follower

end
