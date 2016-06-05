class CreateJoinTable < ActiveRecord::Migration
  def change
      create_join_table :users, :languages do |t|
      end
    end
end
