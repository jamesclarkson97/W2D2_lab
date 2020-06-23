require("minitest/autorun")
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative("../bus")
require_relative("../person")

class BusTest < MiniTest::Test

    def setup()
        @bus = Bus.new(22, "Ocean Terminal")
        @person = Person.new("Donald", 30)
    end

    def test_drive()
        assert_equal("Brum brum", @bus.drive())
    end

    def test_has_bus_number()
        assert_equal(22, @bus.route_number)
    end

    def test_has_destination()
        assert_equal("Ocean Terminal", @bus.destination)
    end

    def test_passenger_array()
        assert_equal([], @bus.passengers)
    end

    def test_pick_up()
        assert_equal([@person], @bus.pick_up(@person))
    end

end