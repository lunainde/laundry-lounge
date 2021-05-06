class AddDescriptionToMachines < ActiveRecord::Migration[6.1]
  def change
    add_column :machines, :description, :text
  end
end
