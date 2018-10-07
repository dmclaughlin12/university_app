class SectionsStudents < ActiveRecord::Migration[5.2]
  def change
      create_table :sections_students, :id => false do |t|
        t.integer :section_id
        t.integer :student_id
      end
  end
end
