class CreateActivities < ActiveRecord::Migration[7.0]
  def change
    create_table :activities do |t|
      t.string :name
      t.text :description
      t.integer :user_id
      t.boolean :completed
      t.integer :level
      t.string :status

      t.timestamps
    end
  end
end
