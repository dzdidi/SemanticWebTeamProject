class CreateUserBookRelations < ActiveRecord::Migration
  def self.up
    create_table :user_book_relations do |t|
      t.integer :user_id
      t.integer :book_id
      t.timestamps
    end
  end

  def self.down
    drop_table :user_book_relations
  end
end
