# code here!
class School
    attr_accessor :name 
    attr_writer
    attr_reader :roster 

    def initialize (name)
        @name = name
        @roster = {}
    end

    def add_student (student_name, grade)
        if @roster[grade]
            @roster[grade] << student_name
        else
            @roster[grade] = []
            @roster[grade] << student_name
        end
    end

    def grade (grade)
        @roster[grade]
    end

    def sort
        hash = {}
        @roster.each {|key, value| hash[key] = value.sort}
        hash
    end
end