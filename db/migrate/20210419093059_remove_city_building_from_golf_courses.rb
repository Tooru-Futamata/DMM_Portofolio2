class RemoveCityBuildingFromGolfCourses < ActiveRecord::Migration[5.2]
  def change
    remove_column :golf_courses, :city, :string
    remove_column :golf_courses, :building, :string
  end
end
