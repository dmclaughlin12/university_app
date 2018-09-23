class CreateCourses < ActiveRecord::Migration[5.2]
  def change
    create_table :courses do |t|
      t.text :name
      t.string :department
      t.integer :number
      t.integer :credit_hours

      t.timestamps
    end
  end
end
