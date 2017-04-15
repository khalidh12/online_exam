class AddCompToTestcounts < ActiveRecord::Migration
  def change
  	add_column :testcounts, :comp, :string
  end
end
