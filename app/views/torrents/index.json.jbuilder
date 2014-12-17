json.array!(@torrents) do |torrent|
  json.extract! torrent, :id, :title, :description, :size, :category, :nfiles, :files, :seeders, :leechers
  json.url torrent_url(torrent, format: :json)
end
