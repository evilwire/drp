class ChangeProjectColumnsToNullable < ActiveRecord::Migration
  def change
    change_column :projects, :mentor_id, :integer, :null => true
    change_column :projects, :project_state_id, :integer, :null => true
  end
end
