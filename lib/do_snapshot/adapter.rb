require_relative 'adapter/abstract'

require_relative 'adapter/digitalocean'
require_relative 'adapter/digitalocean_v2'

module DoSnapshot
  module Adapter
    def api(protocol, options)
      case protocol
        when 2
          return DigitaloceanV2.new(options)
        else
          return Digitalocean.new(options)
      end
    end
    module_function :api
  end
end