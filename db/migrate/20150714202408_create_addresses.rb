class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.integer :type_of_address
      t.text :address
      t.integer :state_id
      t.integer :city_id

      t.timestamps
    end
  end
end
