require 'test_helper'

class NoMethodErrorExtensionTest < Minitest::Test
  def setup
    @receiver = "receiver"
    @error = assert_raises(NoMethodError) do
      @receiver.doesnt_exist
    end
  end

  def test_receiver
    assert_same @receiver, @error.receiver
  end
end
