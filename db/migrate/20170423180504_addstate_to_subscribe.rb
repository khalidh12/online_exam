class AddstateToSubscribe < ActiveRecord::Migration
  def change
  	add_column :subscribes, :state, :string
  end
end
