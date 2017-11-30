class CreateSourceCategories < ActiveRecord::Migration[5.1]
  def change
    create_table :source_categories do |t|
      t.references :source, foreign_key: true
      t.references :category, foreign_key: true

      t.timestamps
    end
  end
end
