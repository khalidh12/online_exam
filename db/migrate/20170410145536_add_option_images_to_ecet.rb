class AddOptionImagesToEcet < ActiveRecord::Migration
  def change
  	add_column :ecets, :optiona, :string
  	add_column :ecets, :optionb, :string
  	add_column :ecets, :optionc, :string
  	add_column :ecets, :optiond, :string
  	add_column :ecets, :optiont, :string
  end
end
