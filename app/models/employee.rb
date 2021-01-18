class Employee

    attr_accessor :name, :salary, :role
    attr_reader :manager
    @@all = []

    def initialize(name, salary, manager, role)
        @name = name
        @salary = salary
        @manager = manager
        @role = role
        self.class.all.push(self)
    end

    def self.all
        @@all
    end

    def self.paid_over(num)
        all.select{|employee| employee.salary > num}
    end
    
    def self.find_by_department(dept)
        all.find{|employee| employee.manager.department == dept}
    end

    def self.search_by_role(role)
        all.select{|employee| employee.role.name == role}
    end

    def get_promoted(role)
        self.role = role
        self.salary += 5
    end


end
