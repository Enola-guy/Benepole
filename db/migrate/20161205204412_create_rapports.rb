class CreateRapports < ActiveRecord::Migration
  def change
    create_table :rapports do |t|
      t.text :comment
      t.boolean :blacklist
      t.integer :note

      t.timestamps null: false
    end
  end
end
