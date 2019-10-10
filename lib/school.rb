require "pry"

class School
    attr_accessor :roster

    def initialize(name)
        @name = name
        @roster = {}
    end

    def add_student(name, grade)
        if @roster.has_key?(grade)
        @roster[grade] << name
        else roster[grade] = [name]
        end
    end

    def grade(grade)
        @roster.fetch(grade)
    end

    def sort
        new_roster = {}
        @roster.map do |grade, students|
            new_roster[grade] = students.sort   
        end
        return new_roster
    end


end