class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.float :price
      t.string :title
      t.string :description
      t.string :email
      t.string :short_url

      t.integer :category_id

      t.timestamps(null: false)
    end
  end
end
