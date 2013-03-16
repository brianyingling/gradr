class CreateAssessmentsTable < ActiveRecord::Migration
  def change
    create_table :assessments do |t|
      t.string        :name
      t.string        :type
      t.integer       :weight
      t.integer       :class_id
      t.timestamps
    end
  end
end
