class CreateGradesTable < ActiveRecord::Migration
 def change
  create_table :grades do |t|
    t.integer       :num
    t.integer       :student_id
    t.integer       :assessment_id
    t.timestamps
  end
 end
end
