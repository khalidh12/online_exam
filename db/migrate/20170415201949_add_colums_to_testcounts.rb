class AddColumsToTestcounts < ActiveRecord::Migration
  def change
  	add_column :testcounts, :userid, :string
  	add_column :testcounts, :tc, :string
  	add_column :testcounts, :subject, :string
  	add_column :testcounts, :cet, :string
  end
end
