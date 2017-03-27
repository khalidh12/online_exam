class AddCetToEamcet < ActiveRecord::Migration
  def change
  	add_column :eamcets, :cet, :string
  end
end
