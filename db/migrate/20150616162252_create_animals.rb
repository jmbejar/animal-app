class CreateAnimals < ActiveRecord::Migration
  def change
    create_table :animals do |t|
      t.string :name
      t.references :animal_class, index: true, foreign_key: true
      t.references :animal_subclass, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
