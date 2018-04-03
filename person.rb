class Person
    attr_reader :first_name, :last_name

    def initialize person = {} # first time seeing this -- passing empty person as object
        @first_name = person[:first_name]
        @last_name = person[:last_name]
    end
end