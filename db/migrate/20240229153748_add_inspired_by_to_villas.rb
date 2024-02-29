class AddInspiredByToVillas < ActiveRecord::Migration[7.1]
  def change
    add_column :villas, :inspired_by, :string
  end
end
