class AddColumnsToProject < ActiveRecord::Migration
  def change
    add_column :projects, :email, :string
    add_column :projects, :major, :string
    add_column :projects, :year, :string
    add_column :projects, :past_courses, :text
    add_column :projects, :current_courses, :text
    add_column :projects, :interests, :text
    add_column :projects, :why, :text
    add_column :projects, :favorite, :text
    add_column :projects, :recommender, :string
    add_column :projects, :alternate, :string
    add_column :projects, :how, :string
    add_column :projects, :questions, :text
  end
end
