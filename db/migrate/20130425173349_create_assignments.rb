class CreateAssignments < ActiveRecord::Migration
  def change
    create_table :assignments do |t|
      t.string :title
      t.timestamp :due_date
      t.boolean :done
      t.text :details

      t.timestamps
    end
  end
end
