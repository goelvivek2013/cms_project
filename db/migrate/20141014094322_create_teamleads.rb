class CreateTeamleads < ActiveRecord::Migration
  def change
    create_table :teamleads do |t|
      t.references :employ_id
      t.references :apm_id

      t.timestamps
    end
  end
end
