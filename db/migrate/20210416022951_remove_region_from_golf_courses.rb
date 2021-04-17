class RemoveRegionFromGolfCourses < ActiveRecord::Migration[5.2]
  def change
    remove_column :golf_courses, :region, :integer
  end
end
