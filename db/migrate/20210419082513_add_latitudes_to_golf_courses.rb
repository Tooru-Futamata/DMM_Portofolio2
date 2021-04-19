class AddLatitudesToGolfCourses < ActiveRecord::Migration[5.2]
  def change
    add_column :golf_courses, :latitude, :float
    add_column :golf_courses, :longitude, :float
  end
end
