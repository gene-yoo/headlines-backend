class CreateArticles < ActiveRecord::Migration[5.1]
  def change
    create_table :articles do |t|
      t.string :title
      t.string :author
      t.string :description
      t.datetime :published_at
      t.string :url
      t.string :image_url
      t.boolean :public, default: false

      t.timestamps
    end
  end
end
