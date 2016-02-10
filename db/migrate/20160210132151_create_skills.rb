class CreateSkills < ActiveRecord::Migration
  def change
    create_table :skills do |t|
      t.string :name
      t.text :description
      t.integer :level, null: false, default: 0
    end
  end
end
