class Tasks < ActiveRecord::Migration[5.2]
  def change
    create_table :tasks do |t|
      t.integer :organizations_id
    end
  end
end
