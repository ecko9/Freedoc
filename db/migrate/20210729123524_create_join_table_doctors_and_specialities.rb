class CreateJoinTableDoctorsAndSpecialities < ActiveRecord::Migration[5.2]
  def change
    create_table :join_table_doctors_and_specialities do |t|

      t.timestamps
    end
  end
end
