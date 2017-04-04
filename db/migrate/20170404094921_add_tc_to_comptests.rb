class AddTcToComptests < ActiveRecord::Migration
  def change
  	add_column :comptests, :tc, :string
  	add_column :comptests, :key, :string
  end
end
