class CreateGendersMaster < ActiveRecord::Migration
  def change
    create_table :genders_master do |t|
      t.string :name
      t.timestamps
    end
  end
end
