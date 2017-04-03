class CreateTestcounts < ActiveRecord::Migration
  def change
    create_table :testcounts do |t|
      t.integer :testcount

      t.timestamps null: false
    end
  end
end
