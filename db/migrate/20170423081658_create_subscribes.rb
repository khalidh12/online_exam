class CreateSubscribes < ActiveRecord::Migration
  def change
    create_table :subscribes do |t|
      t.string :name
      t.string :email
      t.string :pin
      t.string :mobile

      t.timestamps null: false
    end
  end
end
