class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :profect_name
      t.string :technology
      t.string :status
      t.string :delivery_date
      t.string :feedback

      t.timestamps
    end
  end
end
