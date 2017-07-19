# code here!

class School

  attr_accessor :roster
  # ROSTER = []
  def initialize(name)
    @name = name
    @roster = {}
  end


  def add_student(student,grade)
    @student = student
    @grade = grade
    if !@roster[@grade]
      @roster[@grade] = [@student]
    else
      @roster[@grade]  << @student
    end
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    @roster.each do |grade, list|
      list.sort!
    end
  end
end
