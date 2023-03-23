class CreateActivities < ActiveRecord::Migration[7.0]
  def change
    create_table :activities do |t|
      t.string :name, default: "", null: false
      t.text :description, default: "", null: false
      t.integer :user_id
      t.boolean :completed, default: false, null: false
      t.integer :level, default: 0, null: false
      t.string :status, default: "created", null: false

      t.timestamps
    end
  end
end
