require './lexicon.rb'
require 'test/unit'


class TestLexicon < Test::Unit::TestCase

  def test_directions()
    assert_equal(Lexicon.scan("north"), [['direction', 'north']])
    result = Lexicon.scan("north south east")

    assert_equal(result, [['direction', 'north'],
      ['direction', 'south'],
      ['direction', 'east']])
  end

  def test_verbs()
    assert_equal(Lexicon.scan("go"), [['verb', 'go']])
    result = Lexicon.scan("go kill eat")
    assert_equal(result, [['verb', 'go'],
      ['verb', 'kill'],
      ['verb', 'eat']])
  end

  def test_stops()
    assert_equal(Lexicon.scan("the"), [['stop', 'the']])
    result = Lexicon.scan("the in of")
    assert_equal(result, [['stop', 'the'],
      ['stop', 'in'],
      ['stop', 'of']])
  end

  def test_nouns()
    assert_equal(Lexicon.scan("bear"),[['noun', 'bear']])
    result = Lexicon.scan("bear princess")
    assert_equal(result, [['noun', 'bear'],
      ['noun', 'princess']])
  end

  def test_numbers()
    assert_equal(Lexicon.scan("1234"), [['number', 1234]])
    result = Lexicon.scan("3 91234 aoeu1234")
    assert_equal(result, [['number', 3],
      ['number', 91234], ['error', 'aoeu1234']])
  end

  def test_errors()
    assert_equal(Lexicon.scan("ASDFADFASDF"), [['error', 'ASDFADFASDF']])
    result = Lexicon.scan("bear IAS princess")
    assert_equal(result, [['noun', 'bear'],
      ['error', 'IAS'],
      ['noun', 'princess']])
  end

  def test_capitalization()
    assert_equal([['noun', 'Bear']], Lexicon.scan("Bear"))
    result = Lexicon.scan("Bear iS a PRINCESS")
    assert_equal([['noun', 'Bear'], ['stop', 'iS'],
      ['stop', 'a'], ['noun', 'PRINCESS']], result)
  end

  def test_combination()
    result = Lexicon.scan("the bear go north 88 eat")
    assert_equal([['stop', 'the'],['noun', 'bear'], ['verb', 'go'],
      ['direction', 'north'], ['number', 88], ['verb', 'eat']], result)
  end
end
