class CreateMissions < ActiveRecord::Migration
  def change
    create_table :missions do |t|
      t.string :name
      t.integer :nombre_jour
      t.integer :nbr_ideal_benevole
      t.integer :duree_shift

      t.timestamps null: false
    end
  end
end
