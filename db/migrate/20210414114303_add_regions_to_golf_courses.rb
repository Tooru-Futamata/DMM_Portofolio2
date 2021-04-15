class AddRegionsToGolfCourses < ActiveRecord::Migration[5.2]
  def change
    add_column :golf_courses, :region, :string
    add_column :golf_courses, :prefecture, :string
  end
end
