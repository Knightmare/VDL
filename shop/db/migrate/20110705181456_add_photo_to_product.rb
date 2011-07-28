class AddPhotoToProduct < ActiveRecord::Migration
  def self.up
    add_column :products, :photo_file_name, :string
    add_column :products, :photo_content_type, :string
    add_column :products, :photo_file_size, :integer
  end

  def self.down
    remove_column :products, :photo_file_size
    remove_column :products, :photo_content_type
    remove_column :products, :photo_file_name
  end
end
