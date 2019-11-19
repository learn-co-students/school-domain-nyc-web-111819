# code here!

require 'pry'

class School 
    
    def initialize(name)
        @name = name
        @roster = {}
    end 

    def roster
        @roster
    end

    def add_student(student_name, grade)
        if @roster.key?(grade) == false
            @roster[grade] = []
        end 
            @roster[grade] << student_name
    end 

    def grade(grade_num)
        @roster[grade_num]
    end

    def sort
        @roster.reduce({}) do |new_hash, (grade, students)|
            new_hash[grade] = students.sort
            new_hash
        end 
    end 
end 