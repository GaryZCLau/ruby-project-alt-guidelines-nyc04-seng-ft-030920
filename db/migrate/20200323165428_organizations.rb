class Organizations < ActiveRecord::Migration[5.2]
  def change
    create_table :organizations do |t|
      t.string :title
      t.string :position
      t.string :requirements
      t.text :content
      t.string :summary
      t.string :url
      t.string :street_address
      t.string :city
      t.string :state
      t.string :postcode
    end
  end
end
