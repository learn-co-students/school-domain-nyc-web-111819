require 'pry'
class School

    def initialize(name)
        @name = name
        @roster = {}
    end

    def roster
        @roster
    end

    def add_student(name, grade)
        if @roster[grade]
            @roster[grade] << name 
        else
            @roster[grade] = [name]
        end
        @roster
    end

    def grade(grade)
        @roster[grade]
    end

    def sort
        @roster = @roster.each do |key, val|
            @roster[key].sort!
        end
        @roster.sort.to_h
    end

end


