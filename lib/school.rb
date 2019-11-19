class School
attr_accessor :roster
attr_reader :name

def initialize(name)
    @name = name 
    @roster = {}
end
def add_student(student_name, grade)
    if @roster.key?(grade)
@roster[grade] << student_name
    else 
    @roster[grade] = []
    @roster[grade] << student_name
    end
    @roster[grade]
end 
def grade(grade_year)
 @roster[grade_year]  
end 

def sort 
    @roster = @roster.each do |key, val|
        @roster[key].sort!
    end

    @roster.sort.to_h
end 

end 