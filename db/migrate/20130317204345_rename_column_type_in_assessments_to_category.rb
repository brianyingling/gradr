class RenameColumnTypeInAssessmentsToCategory < ActiveRecord::Migration
  def change
    rename_column :assessments, :type, :category
  end
end
