class CreateAnimalSubclasses < ActiveRecord::Migration
  def change
    create_table :animal_subclasses do |t|
      t.string :name
      t.references :animal_class, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
