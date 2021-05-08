class AddImgToMachines < ActiveRecord::Migration[6.1]
  def change
    add_column :machines, :img, :string
  end
end
