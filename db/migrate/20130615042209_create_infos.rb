class CreateInfos < ActiveRecord::Migration
  def change
    create_table :infos do |t|
      t.string :title
      t.string :url
      t.text :text
      t.string :user

      t.timestamps
    end
  end
end
