class ChangeColumnToKlassIdInAssessmentsTable < ActiveRecord::Migration
 def change
  rename_column :assessments, :class_id, :klass_id
 end
end
