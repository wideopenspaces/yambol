require 'yambol'

if ENV['CI']
  require 'coveralls'
  Coveralls.wear! do
    add_filter 'spec'
  end
end

require 'minitest'
require 'minitest/autorun'
require 'minitest/spec'
require 'minitest/pride'
require 'minitest/hell'

require 'minitest-spec-context'

