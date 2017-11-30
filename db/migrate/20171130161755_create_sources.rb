class CreateSources < ActiveRecord::Migration[5.1]
  def change
    create_table :sources do |t|
      t.string :name
      t.string :description
      t.string :source_url
      t.string :language
      t.string :country
      t.references :category, foreign_key: true

      t.timestamps
    end
  end
end
