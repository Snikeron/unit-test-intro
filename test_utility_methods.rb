require_relative 'utility_methods'
require 'test/unit' # gem test-unit

inherit test methods from Gem
class TestUtilityMethods < Test::Unit::TestCase
    def test_only_once
        # test array containing duplicate
        words = ['hello', 'hi', 'hi']
        # test result if the string to look for is 'hi'
        result = included_only_once(words, 'hi')
        assert(result, 'did not pass true') 
    end

    # CHALLENGE: write a test that tests different set of words
    # word should NOT be in the array
    def test_not_only_once
        words = ['this', 'love', 'has', 'taken', 'its', 'toll']
        result = included_only_once(words, 'hello')
        assert(result, 'word is not in array')
    end
end

