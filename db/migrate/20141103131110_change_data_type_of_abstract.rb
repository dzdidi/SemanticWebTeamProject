class ChangeDataTypeOfAbstract < ActiveRecord::Migration
  def change
  end
  def self.up
  	change_table :book do |b|
  		b.change :abstract, :text
  	end
  end
  def self.down
  	change_table :book do |b|
  		b.change :abstract, :string
    end
  end
end