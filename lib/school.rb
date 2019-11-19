require 'pry'
class School

    attr_accessor :grade, :student_name, :roster
    attr_reader :name 

    def initialize(name)
        @name = name
        @roster = {}
    end

    def add_student(student_name, year)
        
        if @roster.key?(year) == false
            @roster[year] = []
        end
        @roster[year] << student_name
    end

    def grade(year)
        @roster[year]
    end

    def sort
        @roster.each do | year, student_name |
            student_name.sort!
        end
    end


end
