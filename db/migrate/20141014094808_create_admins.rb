class CreateAdmins < ActiveRecord::Migration
  def change
    create_table :admins do |t|
      t.references :employ, index: true

      t.timestamps
    end
  end
end
