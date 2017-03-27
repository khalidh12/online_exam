class CreateSubmitques < ActiveRecord::Migration
  def change
    create_table :submitques do |t|
      t.integer :userid
      t.string :question
      t.string :answer

      t.timestamps null: false
    end
  end
end
