class School

def initialize(school_name)
    @school_name = school_name
    @roster = {}
end

def roster
    @roster
end

def add_student(student_name, grade)
    roster[grade] = [] if roster[grade].nil?
    roster[grade] << student_name
end

def grade(grade)
    roster[grade]
end

def sort
    sorted = {}
    roster.each do |grade, student|
    sorted[grade] = student.sort
    end
    sorted
end

end
