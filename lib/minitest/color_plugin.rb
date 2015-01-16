require 'minitest'

module Minitest
  def self.plugin_color_options opts, options
    opts.on "--color", "Colorize the output" do
      Color.color!
    end
  end

  def self.plugin_color_init options
    if Color.color?
      io = options.fetch(:io, $stdout)
      self.reporter.reporters.reject! {|o| o.is_a? ProgressReporter }
      self.reporter.reporters << Color.new(io, options)
    end
  end

  class Color < Reporter
    ESC    = "\e["
    NND    = "#{ESC}0m"
    GREEN  = "#{ESC}32m"
    RED    = "#{ESC}31m"
    YELLOW = "#{ESC}33m"

    def self.color!
      @color = true
    end

    def self.color?
      @color ||= false
    end

    def record result
      io.print color_code(result)
      io.print result.result_code

      io.print NND
    end

    private

    def color_code result
      color_code = case result.result_code
                   when "."
                     GREEN
                   when "E", "F"
                     RED
                   when "S"
                     YELLOW
                   end
      color_code
    end
  end
end
