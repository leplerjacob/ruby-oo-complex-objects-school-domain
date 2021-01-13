require 'pry'
class School

    def initialize(name)
        @name = name
        @roster = {}
    end

    def roster
        @roster
    end

    def add_student(name, grade)
        if !@roster[grade]
            @roster[grade] = []
            # binding.pry
        end
        @roster[grade].push(name)
        # binding.pry
    end

    def grade(grade)
        @roster[grade]
    end

    def sort
        @roster.each{|key,value|
            value.sort!
        }
    end

end