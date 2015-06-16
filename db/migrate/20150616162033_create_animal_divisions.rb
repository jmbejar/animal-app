class CreateAnimalDivisions < ActiveRecord::Migration
  def change
    create_table :animal_divisions do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
