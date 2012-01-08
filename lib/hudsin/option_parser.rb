module Hudsin
  class OptionParser
    def parse options
      parsed = {}
      while options.any?
        next_option = options.shift

        if next_option == "--server"
          parsed[:server] = options.shift
        else
          parsed[:command] = next_option
        end
      end
      parsed
    end
  end
end
