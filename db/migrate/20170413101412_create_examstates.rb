class CreateExamstates < ActiveRecord::Migration
  def change
    create_table :examstates do |t|
      t.string :cet
      t.string :group
      t.string :tc
      t.string :status

      t.timestamps null: false
    end
  end
end
