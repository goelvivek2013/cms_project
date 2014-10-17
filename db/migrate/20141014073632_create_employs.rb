class CreateEmploys < ActiveRecord::Migration
  def change
    create_table :employs do |t|
      t.string :first_name
      t.string :last_name
      t.string :contact
      t.text :address
      t.string :role , :default => 'developer'
      t.timestamps
    end
  end
end
