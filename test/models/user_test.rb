require 'test_helper'

class UserTest < ActiveSupport::TestCase
  def setup
      @user = users(:default)
      @admin = users(:admin)
  end

  test 'should not be admin by default' do
      assert_not @user.admin
  end
  
  test '@admin should be admin' do
      assert @admin.admin
  end

  test 'is_admin? should work' do
      assert_not @user.is_admin?
      assert @admin.is_admin?
  end
end
