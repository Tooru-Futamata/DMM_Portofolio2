class ChangeDataRegionToGolfcourse < ActiveRecord::Migration[5.2]
  def change
    change_column :golf_courses, :region, :integer
    change_column :golf_courses, :prefecture, :integer
  end
end
