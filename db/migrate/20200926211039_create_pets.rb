class CreatePets < ActiveRecord::Migration[6.0]
  def change
    create_table :pets do |t|
      t.string :name
      t.string :category
      t.date :birth
      t.boolean :adopted

      t.timestamps
    end
  end
end
