class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :name
      t.string :author
      t.string :abstract
      t.integer :numberOfPages
      t.string :publisher
      t.string :imageLink
      t.string :amazonLink

      t.timestamps
    end
  end
end