class CreateButlers < ActiveRecord::Migration[6.0]
  def change
    create_table :butlers do |t|
      t.string :name
      t.text :description
      t.integer :price
      t.integer :age
      t.integer :years_of_experience
      t.string :picture
      t.string :academic_grade

      t.timestamps
    end
  end
end
