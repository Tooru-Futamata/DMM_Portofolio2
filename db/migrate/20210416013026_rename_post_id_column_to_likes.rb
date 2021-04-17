class RenamePostIdColumnToLikes < ActiveRecord::Migration[5.2]
  def change
    rename_column :likes, :post_id, :golf_course_id
  end
end
