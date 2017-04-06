require 'pry'

class School

  attr_accessor :roster

  def initialize(name)
    @roster = {}
  end

  def add_student(name, grade)
    if @roster[grade] == nil
      @roster[grade] = [name]
    else
      @roster[grade] << name
    end
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    return_hash = {}
    @roster.keys.sort.each do |grade|
      sorted_array = []
      sorted_array = @roster[grade].sort
      return_hash[grade] =sorted_array
    end
    return_hash
  end



end
