class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      t.integer :user_id
      t.string :login_id
      t.string :login_pwd
      t.string :name
      t.timestamps
    end
  end

  def self.down
    drop_table :users
  end
end
