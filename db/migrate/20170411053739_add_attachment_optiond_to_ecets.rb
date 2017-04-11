class AddAttachmentOptiondToEcets < ActiveRecord::Migration
  def self.up
    change_table :ecets do |t|
      t.attachment :optiond
    end
  end

  def self.down
    remove_attachment :ecets, :optiond
  end
end
