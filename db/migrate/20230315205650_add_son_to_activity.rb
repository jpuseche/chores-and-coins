class AddSonToActivity < ActiveRecord::Migration[7.0]
  def change
    add_column :activities, :son_id, :integer
  end
end
