class CreateCommerces < ActiveRecord::Migration[5.2]
  def change
    create_table :commerces do |t|
      t.string :commerce_name,  null: false 
      t.string :website,  null: false, uniqueness: true
      t.string :category
      t.string :name,  null: false
      t.string :last_name,  null: false
      t.string :position
      t.string :phone,  null: false
      t.string :email,  null: false, uniqueness: true

      t.timestamps
    end
  end
end
