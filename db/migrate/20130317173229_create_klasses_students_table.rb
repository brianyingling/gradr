class CreateKlassesStudentsTable < ActiveRecord::Migration
  def change
    create_table :klasses_students, :id=>false do |t|
      t.integer       :klass_id
      t.integer       :student_id
    end
  end
end
