class AddAttachmentScreenshotToProjects < ActiveRecord::Migration
  def up
    change_table :projects do |t|
      t.attachment :screenshot
    end
  end

  def down
    remove_attachment :projects, :screenshot
  end
end
