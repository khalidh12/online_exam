class AddAttachmentOptionbToEcets < ActiveRecord::Migration
  def self.up
    change_table :ecets do |t|
      t.attachment :optionb
    end
  end

  def self.down
    remove_attachment :ecets, :optionb
  end
end
