class ChangeCompInTestcounts < ActiveRecord::Migration
  def change
  	rename_column :testcounts, :comp, :shortsubject
  end
end
