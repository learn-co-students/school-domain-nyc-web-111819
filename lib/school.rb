require 'pry'

class School
    attr_reader :name, :roster

    def initialize(name)
        @name = name
        @roster = Hash.new {|k,v| k[v] = []}
    end

    def add_student(name,grade)
        roster[grade] << name
    end

    def grade(grade)
        roster[grade]
    end

    def sort
        roster.each do |grade, students|
        students.sort!
        end
    end
end

