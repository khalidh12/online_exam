class AddAttachmentOptioncToEcets < ActiveRecord::Migration
  def self.up
    change_table :ecets do |t|
      t.attachment :optionc
    end
  end

  def self.down
    remove_attachment :ecets, :optionc
  end
end
