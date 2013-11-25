class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :author, limit: 30, null: false
      t.text :content
      t.integer :article_id

      t.timestamps
    end
  end
end
