# == Schema Information
#
# Table name: torrents
#
#  id          :integer          not null, primary key
#  title       :string
#  description :text
#  size        :float
#  category    :string
#  nfiles      :integer
#  files       :text
#  seeders     :integer
#  leechers    :integer
#  user_id     :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Torrent < ActiveRecord::Base
  belongs_to :user
end
