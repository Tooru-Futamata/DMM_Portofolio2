class AddCityToGolfCourses < ActiveRecord::Migration[5.2]
  def change
    add_column :golf_courses, :city, :string
    add_column :golf_courses, :building, :string
    add_column :golf_courses, :postal_code, :string
  end
end
