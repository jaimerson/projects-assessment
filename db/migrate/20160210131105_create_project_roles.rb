class CreateProjectRoles < ActiveRecord::Migration
  def change
    create_table :project_roles do |t|
      t.references :user, index: true, foreign_key: true
      t.references :project, index: true, foreign_key: true
      t.integer :role_type, null: false, default: 0
    end
  end
end
