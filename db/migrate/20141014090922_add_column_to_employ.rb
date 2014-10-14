class AddColumnToEmploy < ActiveRecord::Migration
  def change
    add_column :employs, :role, :string
  end
end
