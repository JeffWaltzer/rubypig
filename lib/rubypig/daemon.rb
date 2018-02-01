module RubyPig

  class Pin
    def initialize(daemon)
      @daemon = daemon
    end

    def []=(pin_number, new_value)
      @daemon.set_pin(pin_number, new_value)
    end
  end

  class Daemon
    def initialize(pipe: nil)
      @pipe = pipe || File.open('/dev/pigpio', 'w')
    end

    def pin
      Pin.new(self)
    end

    def set_pin(pin_number, new_value)
      @pipe.puts("p #{pin_number} #{new_value}")
    end

  end
end