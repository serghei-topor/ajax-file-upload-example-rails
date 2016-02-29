class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :last_name
      t.string :avatar_file_name
      t.integer :avatar_file_size
      t.string :avatar_content_type
      t.datetime :avatar_updated_at

      t.timestamps null: false
    end
  end
end
