require_relative 'person'
require 'test/unit' # gem test-unit


class TestPerson < Test::Unit::TestCase
    def test_person_created_instance
        john = Person.new 
        sally = Person.new 
        assert_instance_of(Person, john)
        assert_instance_of(Person, sally)
    end

    def test_person_instance_first_name
        john = Person.new first_name: 'John'
        sally = Person.new first_name: 'Sally'
        assert_equal('John', john.first_name)
        assert_equal('Sally', sally.first_name)
    end

    def test_person_instance_last_name
        john = Person.new last_name: 'Thompson'
        sally = Person.new last_name: 'Lukas'
        assert_equal('Thompson', john.last_name)
        assert_equal('Lukas', sally.last_name)
    end
    
end