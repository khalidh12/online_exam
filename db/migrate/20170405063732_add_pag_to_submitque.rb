class AddPagToSubmitque < ActiveRecord::Migration
  def change
  	add_column :submitques, :pag, :integer
  end
end
