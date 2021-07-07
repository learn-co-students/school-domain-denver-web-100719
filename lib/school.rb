# code here!

class School
    attr_accessor :name, :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student student_name, grade
    if roster[grade] ||= [] #if rooster grade is true or if it is empty
    roster[grade] << student_name
    end
  end

  def grade student_grade
    roster[student_grade]
  end
def sort
    sorted_hash = {}
        roster.each do |k, v|
            sorted_hash[k]= v.sort
        end
        sorted_hash
    end
end