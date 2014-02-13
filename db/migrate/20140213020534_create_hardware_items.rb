class CreateHardwareItems < ActiveRecord::Migration
  def change
    create_table :hardware_items do |t|
      t.string :manufacturer
      t.string :hardware_model
      t.string :link
      t.string :instructions_link
      t.string :description
      t.decimal :cost
      t.string :algorithm
      t.float :speed_gh_s
      t.decimal :power_w
      t.boolean :is_available
      t.string :availability_comment
      t.string :hardware_type
      t.timestamps
    end
  end
end
