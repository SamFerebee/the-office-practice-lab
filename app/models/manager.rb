class Manager

    @@all = []
    @@all_departments = []
    @@total_age = 0.0
    @@average_age = 0.0
    attr_accessor :name, :department, :age

    def initialize(name, department, age)
        @name = name
        @department = department
        @age = age
        @employees = []
        @roles = []
        self.class.all.push(self)
        self.class.all_departments_no_uniq.push(department)
        self.class.total_age += age
        #@@total_age += age
    end

    def name
        @name
    end

    def department
        @department
    end

    def age
        @age
    end

    def employees
        @employees
    end

    def roles
        @roles
    end

    def self.all
        @@all
    end

    def self.all_departments_no_uniq
        @@all_departments
    end

    def self.all_departments
        @@all_departments.uniq
    end

    def self.total_age=(num)
        @@total_age += num
    end

    def self.total_age
        @@total_age
    end

    def self.average_age
        @@average_age = @@total_age / @@all.size
    end


end
