class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :title
      t.text :description
      t.decimal :percent_complete,   default: 0

      t.timestamps null: false
    end
  end
end
