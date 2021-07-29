class JointureJtdas < ActiveRecord::Migration[5.2]
  def change
    add_reference :join_table_doctors_and_specialities, :doctor, foreign_key: true
    add_reference :join_table_doctors_and_specialities, :speciality, foreign_key: true
  end
end
