class AddColumnToEcets < ActiveRecord::Migration
  def change
  	add_column :ecets, :cet, :string
  end
end
