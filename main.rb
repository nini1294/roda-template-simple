require 'roda'
require 'json'

class Main < Roda
  plugin :json, serializer: proc { |o| JSON.pretty_generate(o) }

  route do |r|
    r.root do
      'Hello World'
    end
  end
end
