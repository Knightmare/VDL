class CreateCheckouts < ActiveRecord::Migration
  def self.up
    create_table :checkouts do |t|
      t.string :first_name
      t.string :last_name
      t.string :address
      t.string :phone_num

      t.timestamps
    end
  end

  def self.down
    drop_table :checkouts
  end
end
