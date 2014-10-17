class AddColumnToEmploy < ActiveRecord::Migration
  def change
    add_column :employs, :status, :string , :default => 'unassigned'
  end
end
