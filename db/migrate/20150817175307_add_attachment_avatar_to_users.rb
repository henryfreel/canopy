class AddAttachmentAvatarToUsers < ActiveRecord::Migration
  def up
    change_table :users do |t|
      t.attachment :avatar
    end
  end

  def down
    remove_attachment :users, :avatar
  end
end
