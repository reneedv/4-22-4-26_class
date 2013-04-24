class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.integer :student_id
      t.string :title
      t.text :description
      t.string :location

      t.timestamps
    end
  end
end
