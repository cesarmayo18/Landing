class CreateFizers < ActiveRecord::Migration[5.2]
  def change
    create_table :fizers do |t|
      t.string :name,  null: true
      t.string :gender,  null: false
      t.string :mail,  null: false, uniqueness: true
      t.string :phone,  null: false

      t.timestamps
    end
  end
end
