class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
      t.text :profile_picture
      t.text :bio
      t.string :language_spoken

      t.timestamps null: false
    end
  end
end
