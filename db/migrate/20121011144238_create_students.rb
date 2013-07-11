require_relative '../config'

# this is where you should use an ActiveRecord migration to 

class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |student_info|
      student_info.string :first_name
      student_info.string :last_name
      student_info.string :gender
      student_info.date :birthday
      student_info.string :email
      student_info.string :phone
    end# HINT: checkout ActiveRecord::Migration.create_table
  end
end
