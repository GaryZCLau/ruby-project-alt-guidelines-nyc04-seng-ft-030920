class Assignments < ActiveRecord::Migration[5.2]
  def change
    create_table :assignments do |t|
      t.integer :volunteers_id
      t.integer :tasks_id
    end
  end
end
