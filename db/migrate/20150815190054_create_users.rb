class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
      t.string :email
      t.string :password_digest
      t.string :profile_picture
      t.string :location
      t.text :bio
      t.string :github
      t.string :linkedin
      t.string :job_title
      t.string :stack

      t.timestamps null: false
    end
  end
end
