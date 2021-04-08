class RenameCourseNameColumnToPosts < ActiveRecord::Migration[5.2]
  def change
    rename_column :posts, :course_name, :title
  end
end
