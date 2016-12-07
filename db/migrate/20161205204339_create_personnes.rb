class CreatePersonnes < ActiveRecord::Migration
  def change
    create_table :personnes do |t|
      t.string :name
      t.string :surname
      t.date :birthdate
      t.string :phone

      t.timestamps null: false
    end
  end
end
