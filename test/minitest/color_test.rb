require_relative 'test_case'
require 'minitest/color'

module Minitest
  class ColorTest < TestCase
    def setup
      Color.color!
      ExampleTest.generate_tests!
      self.reporter = Color.new io
    end
    attr_accessor :reporter

    def test_passing_tests_are_green
      reporter.record ExampleTest.new(:test_pass).run

      exp_format = "#{Color::GREEN}.#{Color::NND}"

      assert_equal exp_format, io.string
    end

    def test_failing_tests_are_red
      reporter.record ExampleTest.new(:test_fail).run

      exp_format = "#{Color::RED}F#{Color::NND}"

      assert_equal exp_format, io.string
    end

    def test_skipped_tests_are_yellow
      reporter.record ExampleTest.new(:test_skip).run

      exp_format = "#{Color::YELLOW}S#{Color::NND}"

      assert_equal exp_format, io.string
    end
  end
end
