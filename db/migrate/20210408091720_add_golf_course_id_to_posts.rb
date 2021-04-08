class AddGolfCourseIdToPosts < ActiveRecord::Migration[5.2]
  def change
    add_column :posts, :golf_course_id, :integer
  end
end
