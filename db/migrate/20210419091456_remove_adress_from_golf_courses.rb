class RemoveAdressFromGolfCourses < ActiveRecord::Migration[5.2]
  def change
    remove_column :golf_courses, :address, :string
  end
end
