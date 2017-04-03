class AddColumnSubmitque < ActiveRecord::Migration
  def change
  	add_column :submitques, :tc, :string
  end
end
