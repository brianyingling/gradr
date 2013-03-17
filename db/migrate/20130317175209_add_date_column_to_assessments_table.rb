class AddDateColumnToAssessmentsTable < ActiveRecord::Migration
  def change
    add_column :assessments, :date_completed, :date
  end
end
