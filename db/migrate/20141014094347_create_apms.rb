class CreateApms < ActiveRecord::Migration
  def change
    create_table :apms do |t|
      t.references :employ_id

      t.timestamps
    end
  end
end
