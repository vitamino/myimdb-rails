class CreateRelationships < ActiveRecord::Migration
  def self.up
    create_table :relationships do |t|
      t.integer :user_id
      t.integer :follower_id
      t.boolean :is_friend, :default=> false
      t.boolean :friendship_requested, :default=> true

      t.timestamps
    end
  end

  def self.down
    drop_table :relationships
  end
end
