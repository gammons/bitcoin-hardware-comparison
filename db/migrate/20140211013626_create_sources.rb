class CreateSources < ActiveRecord::Migration
  def change
    create_table :sources do |t|
      t.integer :item
      t.string :field
      t.string :title
      t.string :url
      t.timestamps
    end
  end
end
