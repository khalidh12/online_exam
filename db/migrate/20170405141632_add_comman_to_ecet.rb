class AddCommanToEcet < ActiveRecord::Migration
  def change
  	add_column :ecets, :comman, :string
  end
end
