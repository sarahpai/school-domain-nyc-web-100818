class School
 attr_accessor :roster
 attr_reader :name

 def initialize(name)
   @name = name
   @roster = {}
 end

# attr_reader :roster

 def add_student(name,grade)
   @roster[grade] = [] unless @roster[grade]
   @roster[grade] << name
 end

 def grade(grade)
   @roster[grade]
 end

 def sort
 sorted_roster = {}
 @roster.each do |grade, student|
   sorted_roster[grade] = student.sort {|a,b| a <=> b}
 end
 sorted_roster
end
end



















# class School
#
# attr_accessor :roster
#  attr_reader :name
#
# def initialize(roster)
#   @name = name
#   @roster = roster
# end
#
# def roster
#   @roster = {}
# end
#
#   def add_student(name, grade)
#     @roster[grade] = [] unless @roster[grade]
#     @roster[grade] << name
#   end
#
#   def grade(grade)
#     @roster[grade]
#   end
#
#   def sort
#     @roster.sort
#   end
#
# end
