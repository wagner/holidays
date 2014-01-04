# encoding: utf-8
require File.expand_path(File.dirname(__FILE__)) + '/../test_helper'

# This file is generated by the Ruby Holiday gem.
#
# Definitions loaded: data/be.yaml
class BeDefinitionTests < Test::Unit::TestCase  # :nodoc:

  def test_be
{Date.civil(2007,1,1) => 'New Year\'s Day', 
 Date.civil(2007,4,8) => 'Easter',
 Date.civil(2007,4,9) => 'Easter Monday',
 Date.civil(2007,5,1) => 'Labour Day',
 Date.civil(2007,5,17) => 'Ascension',
 Date.civil(2007,5,27) => 'Pentecost',
 Date.civil(2007,5,28) => 'Pentecost Monday',
 Date.civil(2007,7,21) => 'National holiday',
 Date.civil(2007,8,15) => 'Assumption of Mary',
 Date.civil(2007,11,1) => 'All Saints',
 Date.civil(2007,11,11) => 'Armistice Day',
 Date.civil(2007,12,25) => 'Christmas'}.each do |date, name|
  assert_equal name, (Holidays.on(date, :be, :informal)[0] || {})[:name]
end
  end
end