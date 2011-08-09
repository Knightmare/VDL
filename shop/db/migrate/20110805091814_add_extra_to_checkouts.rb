class AddExtraToCheckouts < ActiveRecord::Migration
  def self.up
    add_column :checkouts, :name, :string
    add_column :checkouts, :price, :decimal
  end

  def self.down
    remove_column :checkouts, :price
    remove_column :checkouts, :name
  end
end
