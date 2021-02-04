# code here!
require 'pry'

class School
    
    attr_accessor :roster, :name 

    def initialize(name)
        @roster = {}
        @name = name
    end

    def add_student(student_name, grade)
        # the ||= operator is used to assign a undefined method. Example: Roster is a empty hash,
        #and we want to generate a key. Therefore we do roster[grade] in which grade is an undefined key.
        #Since there is no value to the left of the ||= operator then it automatically assigns
        #it to the right side of the operator. Example : a ||= b in this case would assign a to b 
        #because a is not defined.  If we were to do a = a || b we would raise a NameError because 
        #a is already defined.  In this case we made the key grade point to an empty array that 
        #will contain the students names. 
        #roster[grade] ||= []
        roster[grade] ||= []
        #here we set our key grade which points to an empty array.  The student_name is the variable 
        #used to store names in the array
        roster[grade] << student_name
        
        
    end
    
    def grade(grade)
        roster[grade]
    end

    def sort 
        #in order for sort method to work we must write it out with def sort. 
        sorted = {}
        #make a new place holder to hold our new hash with the sorted names
        roster.each do |grade, students|
            sorted[grade] = students.sort
        #use the each method to iterate through a hash in which the grade key will point to the 
        #students in a sorted alphabetical order names. 
        end 
        sorted
    end
end