class CreateTeachersTable < ActiveRecord::Migration
  def change
    create_table :teachers do |t|
      t.string        :email
      t.string        :first_name
      t.string        :last_name
      t.string        :password_digest
      t.timestamps
    end
  end
end
