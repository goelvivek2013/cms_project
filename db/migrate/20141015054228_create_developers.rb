class CreateDevelopers < ActiveRecord::Migration
  def change
    create_table :developers do |t|
      t.references :employ, index: true
      t.references :teamlead, index: true

      t.timestamps
    end
  end
end
