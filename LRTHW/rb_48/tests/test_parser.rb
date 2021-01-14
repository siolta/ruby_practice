require './parser.rb'
require 'test/unit'


class TestLexicon < Test::Unit::TestCase
  def test_peek()
    assert_equal(Parser.peek([['noun', 'bear']]), 'noun')
  end
  def test_parse_obj()
    assert_equal(Parser.parse_object([['stop', 'the'], ['noun', 'can']]), ['noun', 'can'])
    assert_raise(ParserError.new("Expected a noun or direction next.")) {Parser.parse_object([['stop', 'the'], ['verb', 'can']])}
  end
end
