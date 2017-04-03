class AddMobileToUsers < ActiveRecord::Migration
  def change
  	add_column :users, :mobile, :string
  	add_column :users, :district, :string
  end
end
