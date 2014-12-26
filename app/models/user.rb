# == Schema Information
#
# Table name: users
#
#  id             :integer          not null, primary key
#  name           :string
#  password_digst :string
#  email          :string
#  status         :integer
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

class User < ActiveRecord::Base
  has_many :torrents
  has_secure_password
  validates_presence_of :password, :on => :create
end
