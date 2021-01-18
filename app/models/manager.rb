class Manager

    @@all = []
    @@all_departments = []
    attr_accessor :name, :department, :age

    def initialize(name, department, age)
        @name = name
        @department = department
        @age = age
        @employees = []
        @roles = []
        self.class.all.push(self)
        self.class.all_departments_no_uniq.push(department)
    end

    def employees
        Employee.all.select{|employee| employee.manager == self}
    end

    def roles
        employees.map{|employee| employee.role}
    end

    def self.all
        @@all
    end

    def self.all_departments
        self.all_departments_no_uniq.uniq
    end

    def self.all_departments_no_uniq
        @@all_departments
    end

    def self.average_age
        total_age = 0
        all.each{|manager| total_age += manager.age}
        total_age / all.size
    end

    def self.all_departments_no_uniq
        @@all_departments
    end


end
