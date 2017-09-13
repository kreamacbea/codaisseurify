class RenameColumnArtists < ActiveRecord::Migration[5.1]
  def change
    rename_column :artists, :image_url, :remote_image_url
  end
end
