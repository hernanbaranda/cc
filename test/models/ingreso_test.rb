require "test_helper"

class IngresoTest < ActiveSupport::TestCase
  def setup
    @user = users(:michael)
    # This code is not idiomatically correct.
    @ingreso = @user.ingresos.build(content: "Lorem ipsum")
  end

  test "should be valid" do
    assert @ingreso.valid?
  end

  test "user id should be present" do
    @ingreso.user_id = nil
    assert_not @ingreso.valid?
  end

  test "content should be present" do
    @ingreso.content = "    "
    assert_not @ingreso.valid?
  end

  test "content should be at most 140 characters" do
    @ingreso.content = "a" * 141
    assert_not @ingreso.valid?
  end

  test "order should be most recent first" do
    assert_equal ingresos(:most_recent), Ingreso.first
  end
end
