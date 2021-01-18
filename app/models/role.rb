class Role
   
    attr_reader :name

    @@all = []

    def initialize(name)
        @name = name
        self.class.all.push(self)
    end

    def self.all
        @@all
    end

    def employees
        Employee.all.select{|employee| employee.role == self}
    end

    def managers
        employees.map{|employee| employee.manager}.uniq
    end

    def add_employee(name, salary, manager)
        Employee.new(name, salary, manager, self)
    end



end