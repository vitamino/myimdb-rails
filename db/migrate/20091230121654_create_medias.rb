class CreateMedias < ActiveRecord::Migration
  def self.up
    create_table :medias do |t|
      t.column :parent_id,  :integer
      t.column :content_type, :string
      t.column :filename, :string    
      t.column :thumbnail, :string 
      t.column :size, :integer
      t.column :width, :integer
      t.column :height, :integer
      t.column :source_url, :string
      t.column :owner_id, :integer
      t.column :owner_type, :string

      t.timestamps
    end
  end

  def self.down
    drop_table :medias
  end
end
