class CreateCookies < ActiveRecord::Migration
  def change
    create_table :cookies do |t|
      t.string :rescipe

      t.timestamps
    end
  end
end
