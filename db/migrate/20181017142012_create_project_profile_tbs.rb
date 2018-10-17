class CreateProjectProfileTbs < ActiveRecord::Migration
  def change
    create_table :project_profile_tbs do |t|

      t.timestamps null: false
    end
  end
end
