class CreateStudentApplications < ActiveRecord::Migration
  def change
    create_table :student_applications do |t|
      t.string :major
      t.string :year
      t.text :past_courses
      t.text :current_courses
      t.text :interests
      t.text :why
      t.text :favorite
      t.string :recommender
      t.string :alternate
      t.string :how
      t.text :questions
      t.references :users

      t.timestamps
    end
  end
end
