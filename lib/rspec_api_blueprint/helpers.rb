module RSpecApiBlueprint
  module Helpers
    # Detect Rack::Test#last_request vs ActionDispatch::TestCase#request
    def last_request
      defined?(super) ? super : request
    end

    # Detect Rack::Test#last_response vs ActionDispatch::TestCase#response
    def last_response
      defined?(super) ? super : response
    end
  end
end
