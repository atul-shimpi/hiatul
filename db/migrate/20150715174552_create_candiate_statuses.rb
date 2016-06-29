class CreateCandiateStatuses < ActiveRecord::Migration
  def change
    create_table :candiate_statuses do |t|
      t.integer :user_id
      t.integer :status
      t.string :comments

      t.timestamps
    end
  end
end
