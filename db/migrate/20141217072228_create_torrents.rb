class CreateTorrents < ActiveRecord::Migration
  def change
    create_table :torrents do |t|
      t.string :title
      t.text :description
      t.float :size
      t.string :category
      t.integer :nfiles
      t.text :files
      t.integer :seeders
      t.integer :leechers

      t.timestamps null: false
    end
  end
end
