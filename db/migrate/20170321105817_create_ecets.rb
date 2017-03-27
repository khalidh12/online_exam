class CreateEcets < ActiveRecord::Migration
  def change
    create_table :ecets do |t|
      t.string :subject
      t.text :question
      t.string :a
      t.string :b
      t.string :c
      t.string :d
      t.string :t
      t.string :tc

      t.timestamps null: false
    end
  end
end
