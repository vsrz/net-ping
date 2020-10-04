# frozen_string_literal: true

$: << File.expand_path('../../lib', __FILE__)
require 'net/ping'

require 'test/unit'
require 'fakeweb'

# This has been fixed in master branch of fakeweb.
module FakeWeb
  class StubSocket
    def close
      @closed = true
    end
  end
end

require 'pry-byebug'