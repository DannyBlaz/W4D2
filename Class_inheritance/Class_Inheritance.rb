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

    def initialize(name, title, salary, boss)
        super
        @employees = []
    end

    def add_employee(employee)
        self.employees << employee
    end

    def bonus(multiplier)
        total = 0
        @employees.each { |employee| total += employee.salary }
        bonus = total * multiplier
    end
    
end

# p ned = Manager.new("Ned", "Founder", 1000000, nil)
# p darren = Manager.new("Darren", "TA Manager", 78000, "Ned")
# p shawna = Employee.new("Shawna", "TA", 12000, "Darren")
# p david = Employee.new("David", "TA", 10000, "Darren")
# darren.add_employee(shawna)
# darren.add_employee(david)

# p darren.bonus(4)
# p david.bonus(3)

# ned.add_employee(darren)
# ned.add_employee(shawna)
# ned.add_employee(david)
# p ned.bonus(5)