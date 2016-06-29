class CreateBirthDates < ActiveRecord::Migration
  def change
    create_table :birth_dates do |t|
      t.timestamps
      t.integer :user_id
      t.datetime :birth_date
    end
  end
end
