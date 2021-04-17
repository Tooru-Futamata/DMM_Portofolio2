class AddRegionIdToGolfCourse < ActiveRecord::Migration[5.2]
  def change
    add_reference :golf_courses, :region, foreign_key: true
  end
end
