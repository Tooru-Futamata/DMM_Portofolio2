class AddAddressToGolfCourses < ActiveRecord::Migration[5.2]
  def change
    add_column :golf_courses, :address, :string
  end
end
