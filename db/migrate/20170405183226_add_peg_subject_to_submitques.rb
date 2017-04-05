class AddPegSubjectToSubmitques < ActiveRecord::Migration
  def change
  	add_column :submitques, :peg, :string
  	add_column :submitques, :subject, :string
  end
end
