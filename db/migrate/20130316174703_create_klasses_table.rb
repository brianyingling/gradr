class CreateKlassesTable < ActiveRecord::Migration
  def change
    create_table :klasses do |t|
      t.string        :name
      t.integer       :teacher_id
    end
  end
end
