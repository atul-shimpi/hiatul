class CreateGenders < ActiveRecord::Migration
  def change
    create_table :genders do |t|
      t.integer :user_id
      t.string :genders_master_id
      t.timestamps
    end
  end
end
