class CreateFestivals < ActiveRecord::Migration
  def change
    create_table :festivals do |t|
      t.string :name
      t.date :date
      t.boolean :status

      t.timestamps null: false
    end
  end
end
