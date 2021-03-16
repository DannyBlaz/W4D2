class Employee
    attr_reader :name, :salary, :title, :boss

    def initialize(name, title, salary, boss)
        @name = name
        @title = title
        @salary = salary
        @boss = boss
    end

    def bonus(multiplier)
        bonus = @salary * multiplier
    end

end

class Manager < Employee
    attr_reader :employees

    def initialize
        @employees = []
    end

    def bonus(multiplier)
        total = 0
        @employees.each { |employee| total += employee.salary }
        bonus = total * multiplier
    end
    
end
