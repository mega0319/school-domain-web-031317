# code here!
class School
  def initialize(school_name)
    @school_name = school_name
    @roster = {}
  end

  def roster
    @roster
  end

  def add_student(student, grade)
    @student = student
    @grade = grade
    @roster[grade] ||= []
    @roster[grade] << student
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    new_hash = {}
    @roster.each do |grade, array|
        new_hash[grade] = array.sort
    end
    new_hash
  end

end
