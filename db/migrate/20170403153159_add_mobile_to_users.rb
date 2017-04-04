class AddMobileToUsers < ActiveRecord::Migration
  def change
  	add_column :users, :firstname, :string
  	add_column :users, :lastname, :string
  	add_column :users, :role, :string
  	add_column :users, :mobile, :string
  	add_column :users, :district, :string
  end
end
