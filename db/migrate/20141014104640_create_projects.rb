class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :project_name
      t.string :technology
      t.string :status
      t.string :delivery_date
      t.string :feedback
      t.references :apm
      t.references :teamlead
      t.references :developer
      t.timestamps
    end
  end
end
