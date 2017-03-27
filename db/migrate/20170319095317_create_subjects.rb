class CreateSubjects < ActiveRecord::Migration
  def change
    create_table :subjects do |t|
      t.string :eamcet
      t.string :icet
      t.string :pgcet
      t.string :edcet
      t.string :diploma

      t.timestamps null: false
    end
  end
end
