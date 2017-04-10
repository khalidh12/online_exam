class AddImageToEcets < ActiveRecord::Migration
  def change
  	add_column :ecets, :qimage , :string
  end
end
