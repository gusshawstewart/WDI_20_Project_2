class CreateJoinTableLearning < ActiveRecord::Migration
  def change
    create_table :learning do |t|
      t.integer :user_id
      t.integer :language_id

      # t.index [:language_id, :user_id]
      # t.index [:user_id, :language_id]
    end
  end
end
