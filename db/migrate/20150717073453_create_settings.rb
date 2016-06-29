class CreateSettings < ActiveRecord::Migration
  def change
    create_table :settings do |t|
      t.string :sender
      t.string :bcc
      t.string :cc
      t.string :subject
      t.string :body
      t.string :signature
      t.integer :expiry
    end
  end
end
