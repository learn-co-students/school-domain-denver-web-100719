class School
    attr_reader :roster
    attr_accessor :name

    def initialize(name)
        @name = name 
        @roster = {}
    end

    def add_student(student_name, grade)
        if @roster.has_key?(grade)
            @roster[grade] << student_name
        else
            @roster[grade] = [student_name]
        end
    end

    def grade(grade)
        @roster[grade]
    end

    def sort
        
        new_roster = @roster.map do |grade, student_name|
            student_name.sort_by do |name|
                name[0]
            end
        end
        new_roster
    end
end
