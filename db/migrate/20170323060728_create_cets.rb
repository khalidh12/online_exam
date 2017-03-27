class CreateCets < ActiveRecord::Migration
  def change
    create_table :cets do |t|
      t.string :name
      t.string :state

      t.timestamps null: false
    end
  end
end
