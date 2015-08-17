class AddSnippetToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :snippet, :text
  end
end
