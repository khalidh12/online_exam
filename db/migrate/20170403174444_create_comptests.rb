class CreateComptests < ActiveRecord::Migration
  def change
    create_table :comptests do |t|
      t.string :subject
      t.string :cet
      t.string :comp

      t.timestamps null: false
    end
  end
end
