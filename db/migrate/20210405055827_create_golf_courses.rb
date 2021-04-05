class CreateGolfCourses < ActiveRecord::Migration[5.2]
  def change
    create_table :golf_courses do |t|
      t.string :name
      t.string :address
      t.string :image_id
      t.timestamp :created_at
      t.timestamp :updated_at

      t.timestamps
    end
  end
end
