class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.references :info
      t.text :body
      t.string :from
      t.integer :parent_id

      t.timestamps
    end
    add_index :comments, :info_id
  end
end
