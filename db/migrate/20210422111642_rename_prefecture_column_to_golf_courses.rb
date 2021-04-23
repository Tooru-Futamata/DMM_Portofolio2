class RenamePrefectureColumnToGolfCourses < ActiveRecord::Migration[5.2]
  def change
    rename_column :golf_courses, :prefecture, :prefecture_id
  end
end
