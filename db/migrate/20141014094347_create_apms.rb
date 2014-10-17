class CreateApms < ActiveRecord::Migration
  def change
    create_table :apms do |t|
      t.references :employ

      t.timestamps
    end
  end
end
