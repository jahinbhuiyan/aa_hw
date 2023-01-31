require "employee"

class Startup

    def initialize(name, funding, salaries)
        @name = name
        @funding = funding
        @salaries = salaries
        @employees = []
    end

    def name
        @name
    end

    def funding
        @funding
    end

    def salaries
        @salaries
    end

    def employees 
        @employees 
    end

    def valid_title?(title)
        if @salaries.has_key?(title)
            return true
        else 
            false
        end
    end

    def >(another_startup)
        if self.funding > another_startup.funding
            return true
        else
            false
        end
    end

    def hire(employee_name, title)
        if self.valid_title?(title)
            @employees << Employee.new(employee_name, title)
        else
            raise "title is invalid"
        end
    end

    def size
        @employees.length
    end

    def pay_employee(employee)
        money_owed = @salaries[employee.title]
        if @funding >= money_owed
            employee.pay(money_owed)
            @funding -= money_owed

        else
            raise "Not enough funding"
        end
    end


    def payday
        @employees.each do |employee|
            pay_employee(employee)
        end
    end


    def average_salary
        sum = 0
        employees.each do |employee|
            sum += @salaries[employee.title]
        end
        sum / (@employees.length * 1.0)
    end

    def close
        @employees = []
        @funding = 0
    end

    def acquire(startup)
        @funding += startup.funding
        startup.salaries.each do |title, amount|
            if !@salaries.has_key?(title)
                @salaries[title] = amount
            end
        end
        @employees += startup.employees 

        startup.close
    end
end
