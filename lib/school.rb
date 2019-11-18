class School
    def initialize(nameS)
        @name = nameS
        @roster = {}
    end
    def roster
        @roster
    end
    def grade(gradeLevel)
        @roster[gradeLevel]
    end
    def sort
        for x in @roster.keys
            @roster[x].sort_by!{ |string| string[0]}
        end
        @roster
    end
    def add_student(name, grade)
        if !roster.keys.include? grade
            roster[grade] = [name]
        else
            roster[grade] << name
        end
    end
end