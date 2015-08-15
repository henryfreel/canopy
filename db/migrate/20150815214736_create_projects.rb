class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :live_url
      t.string :github_url
      t.string :title
      t.text :description
      t.belongs_to :user

      t.timestamps null: false
    end
  end
end
