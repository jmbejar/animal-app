class CreateAnimalClasses < ActiveRecord::Migration
  def change
    create_table :animal_classes do |t|
      t.string :name
      t.references :animal_division, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
