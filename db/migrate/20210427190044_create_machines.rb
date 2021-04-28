class CreateMachines < ActiveRecord::Migration[6.1]
  def change
    create_table :machines do |t|
      t.string :location
      t.string :business_type
      t.string :business_name
      t.string :machine_type
      t.decimal :price
      t.boolean :availability, default: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
