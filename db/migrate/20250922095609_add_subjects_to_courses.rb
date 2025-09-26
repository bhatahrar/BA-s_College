class AddSubjectsToCourses < ActiveRecord::Migration[8.0]
  def change
    add_column :courses, :subjects, :string
  end
end
