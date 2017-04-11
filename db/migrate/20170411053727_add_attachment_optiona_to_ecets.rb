class AddAttachmentOptionaToEcets < ActiveRecord::Migration
  def self.up
    change_table :ecets do |t|
      t.attachment :optiona
    end
  end

  def self.down
    remove_attachment :ecets, :optiona
  end
end
