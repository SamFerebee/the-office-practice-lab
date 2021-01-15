class Manager

    @@all = []
    @@all_departments = []
    @@total_age = 0.0
    attr_accessor :name, :department, :age

    def initialize(name, department, age)
        @name = name
        @department = department
        @age = age
        @employees = []
        @roles = []
        #@@all << self
        self.class.all << self
        self.class.all_departments << department
        self.class.total_age += age
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

    def self.all_departments
        @@all_departments.uniq
    end

    def self.total_age
        @@total_age
    end

    def self.average_age
        @@average_age = @@total_age / self.class.all.size
    end


end
