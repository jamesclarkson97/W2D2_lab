require("minitest/autorun")
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative("../person")


class PersonTest < MiniTest::Test

    def setup()
        @person = Person.new("Rudy", 21)
    end

    def test_has_name()
        assert_equal("Rudy", @person.name())
    end

    def test_has_age()
        assert_equal(21, @person.age())
    end

end